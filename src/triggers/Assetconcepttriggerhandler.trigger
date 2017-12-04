trigger Assetconcepttriggerhandler on Asset_Concept__c (after update) 
{
map<ID,Asset_Concept__c> oldmap = new map<ID,Asset_Concept__c>();
list<Asset_Concept__c> lstAssetConcept = trigger.new;
map<id, Asset_Concept__c> mapOldAssetConcept = trigger.oldMap;
list<Marketing_Asset__c > lst2 = new list<Marketing_Asset__c >();
set<ID> setIds =  new set<ID>();

    for(Asset_Concept__c objAssetConcept : lstAssetConcept)
        {
              if(mapOldAssetConcept.containsKey(objAssetConcept.id) && ((objAssetConcept.Embargo_Date__c != mapOldAssetConcept.get(objAssetConcept.id).Embargo_Date__c) ||
              (objAssetConcept.Embargo_Status__c != mapOldAssetConcept.get(objAssetConcept.id).Embargo_Status__c))){
                  setIds.add(objAssetConcept.id);
              }
        }
     
     list<Marketing_Asset__c> lstChildMktAssets = new list<Marketing_Asset__c>();
     lstChildMktAssets = [SELECT ID, Embargo_Status__c, Embargo_Date__c, Asset_Concept__r.Embargo_Status__c,
                                 Asset_Concept__r.Embargo_Date__c
                          FROM Marketing_Asset__c
                          WHERE Asset_Concept__c IN :setIds];
     for(Marketing_Asset__c obj : lstChildMktAssets )
         {
             obj.Embargo_Status__c =  obj.Asset_Concept__r.Embargo_Status__c;
             obj.Embargo_Date__c = obj.Asset_Concept__r.Embargo_Date__c;
         }
    //     system.debug('list1' + lst1);
    //    system.debug('list2' + lst2); 
   //  update lst1;
     update lstChildMktAssets ;
        
}