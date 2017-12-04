Trigger UpdateMarketingAsset on Asset_Concept__c(after update ){
    Map<Id,List<Marketing_Asset__c>> mapAsset = new Map<Id,List<Marketing_Asset__c>>();
    // when you want ID of Sobjects you can just as well pass the SObject list.
    // so instead of giving Contact__c in : trigger.newmap.keyset() , you could as well just give Contact__c in : trigger.new, I prefer trigger.new - it looks better.
    for(Marketing_Asset__c obj :[select Id,Embargo_Status__c,Embargo_Date__c from Marketing_Asset__c where Asset_Concept__c in : trigger.newmap.keyset()])
    {
        system.debug(obj);
        if(mapAsset.get(obj.Asset_Concept__c) == null){
            mapAsset.put(obj.Asset_Concept__c,new List<Marketing_Asset__c>());
        }
        mapAsset.get(obj.Asset_Concept__c).add(obj);
    }

    List<Marketing_Asset__c> lstToUpdate = new List<Marketing_Asset__c>();
    // why go for another loop here ??
    // what you are trying to do is to iterate throught he partner_member__c records, could have done it in the previous loop itself
    for(Asset_Concept__c c : trigger.new){
        List<Marketing_Asset__c> abc = mapAsset.get(c.Id);
        // nested loops - bad for coding standards
        for(Marketing_Asset__c obj :abc){
            //your logic here
            lstToUpdate.add(obj);
        }
    }

    // unguarded update
    update lstToUpdate;
}