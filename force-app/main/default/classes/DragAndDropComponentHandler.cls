/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 05-24-2023
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class DragAndDropComponentHandler {
    @AuraEnabled
    public static List<Task> getAllTask(){
        Id loggedInUserId = UserInfo.getUserId();
        return [Select Id, Owner.Name, Subject, Status, WhoId, WhatId, Who.Name, What.Name, Description from Task where OwnerId = :loggedInUserId];
    }

    @AuraEnabled
    public static void updateTask(Id newTaskId, String newStatus){
        Task updateTask = new Task(Id = newTaskId, Status = newStatus);
        Database.update(updateTask);
    }
}