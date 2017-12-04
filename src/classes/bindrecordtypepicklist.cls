public with sharing class bindrecordtypepicklist
{ 
   list<SelectOption> options {get;set;} 
 
   public String selectedRecordType{get;set;} 

   private Contact con;
   
   public bindrecordtypepicklist(ApexPages.StandardController stdcontroller)
   {
       this.con = (Contact)stdController.getRecord();
   }
   public list<SelectOption> getRecordTypes() 
   { 
      options = new list<SelectOption>(); 
      options.add(new selectOption('', '- None -'));
      for(RecordType rt:[SELECT Name FROM RecordType WHERE SobjectType = 'Contact' AND IsActive=True]) 
      { 
         if(rt != null) 
         {
           options.add(new SelectOption(rt.ID,rt.Name)); 
         }
      } 
      return options; 
  }   
  public void CallContactsEditPage()
  {
   //
  }
}