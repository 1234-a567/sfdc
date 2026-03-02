// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents
class One{
public void m1(){
    system.debug('this is dilep');
    list<position__c> list1=[select id,name from position__c];
    for(position__c p:list1){
        system.debug(p.name);
    }
}

}
One obj =new One();
obj.m1();