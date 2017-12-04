public with sharing class AngularWithVfPage {
  
       
 public static String getContacts() {
       return JSON.serialize([select Name, Language__c
           from Title__c ]);
   }
}