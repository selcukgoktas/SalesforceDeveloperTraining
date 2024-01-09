import { LightningElement, track, wire } from 'lwc';
import taskData from '@salesforce/apex/DragAndDropComponentHandler.getAllTask';
import updateTask from '@salesforce/apex/DragAndDropComponentHandler.updateTask';

export default class DragAndDropComponent extends LightningElement {
    @track taskNewList = [];
    @track taskInProgressList = [];
    @track taskCompletedList = [];
    @track dropTaskId;

    connectedCallback(){
        this.getTaskData();
    }

    getTaskData(){
        taskData().then(result =>{
            let taskNewData = [];
            let taskInProgressData = [];
            let taskCompletedData = [];
            for(let i = 0; i < result.length; i++){
                let task = new Object();
                task.Id = result[i].Id;
                task.Subject = result[i].Subject;
                task.Status = result[i].Status;
                task.Description = result[i].Description;
                task.WhoId = '/'+result[i].WhoId;
                task.WhatId = '/'+result[i].WhatId;
                if(result[i].WhoId !== undefined){
                    task.ContactName = result[i].Who.Name;
                }
                if(result[i].WhatId !== undefined){
                    task.AccountName = result[i].What.Name;
                }
                if(task.Status === 'Not Started'){
                    taskNewData.push(task);
                }else if(task.Status !== 'Not Started' && task.Status !== 'Completed'){
                    taskInProgressData.push(task);
                }else if(task.Status === 'Completed'){
                    taskCompletedData.push(task);
                }
            }
            this.taskNewList = taskNewData;
            this.taskInProgressList = taskInProgressData;
            this.taskCompletedList = taskCompletedData;
        }).catch(error => {
            window.alert('$$$Test1:'+ error);
        })
    }

    taskDragStart(event){
        const taskId = event.target.id.substr(0,18);
        //window.alert(taskId);
        this.dropTaskId = taskId;
        let draggableElement = this.template.querySelector('[data-id="' + taskId + '"]');
        draggableElement.classList.add('drag');
        this.handleTaskDrag(taskId);
    }

    taskDragEnd(event){
        const taskId = event.target.id.substr(0,18);
        //window.alert(taskId);
        let draggableElement = this.template.querySelector('[data-id="' + taskId + '"]');
        draggableElement.classList.remove('drag');
    }

    handleDrop(event){
        this.cancel(event);
        const columnUsed = event.target.id;
        let taskNewStatus;
        if(columnUsed.includes('InProgress')){
            taskNewStatus = 'In Progress';
        }else if(columnUsed.includes('newTask')){
            taskNewStatus = 'Not Started';
        }else if(columnUsed.includes('completed')){
            taskNewStatus = 'Completed';
        }
        //window.alert(columnUsed + ' & '+ taskNewStatus);
        this.updateTaskStatus(this.dropTaskId, taskNewStatus);
        let draggableElement = this.template.querySelector('[data-role="drop-target"]');
        draggableElement.classList.remove('over');
    }

    handleDragEnter(event){
        this.cancel(event);
    }

    handleDragOver(event){
        this.cancel(event);
        let draggableElement = this.template.querySelector('[data-role="drop-target"]');
        draggableElement.classList.add('over');
    }

    handleDragLeave(event){
        this.cancel(event);
        let draggableElement = this.template.querySelector('[data-role="drop-target"]');
        draggableElement.classList.remove('over');
    }

    handleTaskDrag(taskId){
        console.log('$$$TEst: '+ taskId);
    }

    updateTaskStatus(taskId, taskNewStatus){
        updateTask({newTaskId: taskId, newStatus: taskNewStatus}).then(result =>{
            this.getTaskData();
        }).catch(error =>{
            window.alert('$$$Test2:'+ JSON.stringify(error));
        })
    }

    cancel(event) {
        if (event.stopPropagation) event.stopPropagation();
        if (event.preventDefault) event.preventDefault();
        return false;
    };

}