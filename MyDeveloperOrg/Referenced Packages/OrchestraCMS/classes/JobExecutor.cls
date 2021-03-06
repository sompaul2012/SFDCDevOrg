/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class JobExecutor implements Database.AllowsCallouts, Database.Batchable<SObject>, Database.Stateful {
    global JobExecutor(Set<Id> jobIds, String session, String inst) {

    }
    global JobExecutor(Set<Id> jobIds, String uname, String pwd, String inst) {

    }
    global JobExecutor(Set<Id> jobIds, String session, String inst, String jobType, Boolean emailUpdate) {

    }
    global void execute(Database.BatchableContext BC, List<cms__Job_Item__c> scope) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
