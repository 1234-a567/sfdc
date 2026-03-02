trigger updateacctype on Contact (after insert,after update) {
    list<Contact> contactlist=[select  id,Level__c ,accountid from contact where Level__c='Secondary' and id in :trigger.new  ] ;
set<id> accountid = new set<id>();
list<account>updatelist=new list<account>();
for (contact con :contactlist){
    if (con.AccountId != null){
	    if(!accountid.contains(con.AccountId))
		{
		accountid.add(con.AccountId);
        Account acc = new Account();
        acc.id=con.accountid;
        acc.type='Installation Partner';
            updatelist.add(acc);
			}
}
}
list<database.saveresult>result=database.update(updatelist); 
    for (database.saveresult res :result){
        if(res.issuccess()){
            system.debug(res);
        }
    }
}