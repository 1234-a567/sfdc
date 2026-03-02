/*list<object>mylist=new list<object>{'dil',5};
list<integer>mylist1=new list<integer>{1,2,3,4,54};
mylist.add(2);
mylist.add('dilep');
mylist.add(true); 
mylist.add(mylist1);
system.debug(mylist);
system.debug(mylist[5][0]);*/
public class mycls {
    String a='anilkumar';
    string vowel ='';
    String consonent='';
    public void m1(){
        for (i=0,i=a.length(),i++){
            if(a[i]=='a'||a[i]=='e'||a[i]=='i'||a[i]=='o'||a[i]=='u'){
                vowel=vowel+a[i];
            }
            else{
                consonent=consonent+a[i];
            }
        }
    }
    system.debug(vowel);
    System.debug(consonent);
}
mycls obj= new mycls(); 
obj.m1();



