public with sharing class Controller_T {

    public ApexPages.StandardController T1 {get; set;}
    public Title__c Title {get; set;}
    
    public ApexPages.StandardController T2 {get; set;}
    public Cast_And_crew__c Contact {get; set;}
    
        
    public Controller_T(ApexPages.StandardController cntrl) {
        
    }
   /* public pageReference doSaveAll() {
        standardContactController.save();
        T1.save();
        T2.save();
        return null;
    }*/
}