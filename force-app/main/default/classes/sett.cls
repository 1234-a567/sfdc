public class sett {
    public void m1(){
Set<String> animal = new Set<String>();
        animal.add('dog');
            animal.add('cat');
        animal.add('tiger');
        animal.add('tiger');
        System.debug(animal.size());
    animal.isempty();
        set<String>copy=animal.clone();
        System.debug(copy);
        copy.remove('tiger');
        System.debug (copy.size());
        copy.contains('cat');
        System.debug(copy);
        copy.clear();
        System.debug(copy);
    }
        public void m2(){
            set<object>names=new set<object>();
            names.add('dil');
            names.add('anil');
            names.add(5);
              System.debug(names);
            
        }
    public void dil(){
        set<Integer>myset=new set<Integer>{1,2};
        System.debug(myset);
}
                
}