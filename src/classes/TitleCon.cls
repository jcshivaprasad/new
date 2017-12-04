public with sharing class TitleCon {

    public TitleCon(ApexPages.StandardSetController controller) {

    }

    public Title__c Title;
    public void TitlePage()
    {
    Title=[select name,language__c,Photo__c from Title__c];
    }
    public title__c getTitle()
    {
    return Title;
    }
    public PageReference save(){
    upsert Title;
    PageReference pref = new ApexPages.standardcontroller(Title).view();
    return pref;
    }
    
}