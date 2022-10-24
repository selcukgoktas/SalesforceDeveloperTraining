import { LightningElement,track } from 'lwc';

export default class Lwc14_SimpleTODO extends LightningElement {
  @track todoList=[];
  itemnum=0;
  item;
 

  textonchangeHandler(event){
    this.item=event.target.value;
  }

  additemtoListHandler(){
    
      let val={
        id:this.itemnum,
        status:'action:check',
        item:this.item
      }
      

      this.todoList=[       
        val,
        ...this.todoList
      ];
      this.itemnum+=1;

  }

  clickApproveHandler(event){

    // event.target.dataset.index

    

    let arrIndex=event.target.dataset.index;

    console.log(arrIndex);

    this.todoList[arrIndex].status='action:approval';

    console.log(this.todoList[arrIndex].status);

    console.log(event.target.dataset.index);
  }

  clickDeleteHandler(event){
    
    console.log(event.target.dataset.index);
    let arrIndex=event.target.dataset.index;

    this.todoList.splice(arrIndex,1);

  }

  keycheck(component, event, helper){
    console.log(component);

    if (component.which == 10 && component.ctrlKey==true ){
        // call the js method i.e. this.handlerfilter();
        
        console.log('ctrl key + enter ');
        this.todoList.splice(0,this.todoList.length);

    } else if (component.which == 13 && component.shiftKey==true){
        // call the js method i.e. this.handlerfilter();
        console.log('shift key + enter ');
        this.item='';
    } else if(component.which == 13 ){
      this.additemtoListHandler();
      this.item='';
    }
}

}
