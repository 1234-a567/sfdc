trigger updatediscountonticket on bus__c (after update) {
if(accounttriggerHelper.isrecurcive == false)
{
list<bus__c> updatebuslist = new list<bus__c>();
for(bus__c  b: trigger.new)
{

account a = new account ();
a.id = '001gK00000ZCXqVQAX';
accounttriggerHelper.isrecurcive = true;
update a;
}
}

}