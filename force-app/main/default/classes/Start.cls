public class Start {
    
    public static void loop() {
        for (Integer i = 0; i <= 5; i++) {
            System.debug(i);
        }
    }

    public static void str() {
        String a = 'anil';
        System.debug('str: ' + a);
        System.debug('---THE END----');
    }
    
    public static void dil() {
        System.debug('this is function');
    }
    
    public static void even() {
        List<Integer> evenList = new List<Integer>();
        for(Integer i = 0; i <= 10; i++) {
             {
                evenList.add(i);
            }
        }
        
        System.debug('Even numbers list: ' + evenList);
    }
    public static void num(){
		List<object>mixedlist=new List<object>();
            mixedlist.add(20);
            mixedlist.add(56);
        	mixedlist.add('anil');
        mixedlist.add(56);
    System.debug('list : ' + mixedlist);
     System.debug(mixedlist[0]);
        System.debug(mixedlist[1]);
        System.debug(mixedlist[2]);
        System.debug(mixedlist[3]);
         system.debug('total:'  + mixedlist.size());
}
}