trigger updatediscountonticket on bus__c(after update, before update) {

    if (trigger.isbefore && trigger.isupdate) {
        for (bus__C busrec: trigger.new) {
         busrec.shippingmethod__C = '';
         busrec.is_discount_elgible__c = false;
            //busobj__c shippingrec = busobj__c.getValues(busrec.country__c.toLowerCase());
            //busobj__c countrynamerecord = busobj__c.getValues('countrieslist');
            list<countrysetup__mdt>  countrynamerecordlist = new list<countrysetup__mdt>();
            list<countrysetup__mdt> shippingreclist = new list<countrysetup__mdt>();
            shippingreclist = [select id,DeveloperName ,countrieslist__c,shippingmethod__C from countrysetup__mdt  where DeveloperName =:busrec.country__c.toLowerCase() limit 1];
            countrynamerecordlist = [select id,DeveloperName ,countrieslist__c,shippingmethod__C from countrysetup__mdt  where DeveloperName = 'countrieslist' limit 1];
            string countrynamesstring = countrynamerecordlist[0].countrieslist__c;
            list < string > countrylist = countrynamesstring.split(',');
            if (!shippingreclist.isempty()) {
                string shippingmethod = shippingreclist[0].shippingmethod__C;
                busrec.shippingmethod__C = shippingmethod;
                }
             if (countrylist.contains(busrec.country__c.toLowerCase())) {
                    busrec.is_discount_elgible__c = true;
                } 
                else{
                 busrec.is_discount_elgible__c = false;
                }
            }

        }
        if (accounttriggerHelper.isrecurcive == false) {
            list < bus__c > updatebuslist = new list < bus__c > ();
            for (bus__c b: trigger.new) {

                account a = new account();
                a.id = '001gK00000ZCXqVQAX';
                accounttriggerHelper.isrecurcive = true;
                update a;
            }
        }
    }