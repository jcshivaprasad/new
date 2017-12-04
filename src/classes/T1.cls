public with sharing class T1{

    public T1() {

    }


    public T1(ApexPages.StandardController controller) {

    }


    public T1(ApexPages.StandardSetController controller) {

    }

List<Title__c> acts = [select Name,Language__c,Thumbnail__c from title__c];
public List<Title__c> getacts(){
return acts;
}
 public PageReference reset() {
    PageReference newpage = new PageReference(System.currentPageReference().getURL());
    newpage.setRedirect(true);
    return newpage;
  }
  public PageReference Language() {
return Page.languages;
}
public PageReference Release() {
return Page.Release;
}
public PageReference CastNCrew() {
return Page.Cast_And_Crew;
}
public PageReference Territories() {
return Page.Territories;
}
public PageReference Title() {
return Page.Page1;
}
}