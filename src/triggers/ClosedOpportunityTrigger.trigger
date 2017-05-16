trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Task> taskList = new List<Task>();
    
    for(Opportunity opp : [SELECT Id from Opportunity where Id in:Trigger.New
                          AND StageName = 'Closed Won']) {
        taskList.add(new Task(WhatId = opp.Id,
                             Subject = 'Follow Up Test Task'));
    }
    
    if (taskList.size() > 0) {
        insert taskList;
    }
}