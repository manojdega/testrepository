trigger DuplicateAccountValidation on Account (before insert, before update) {
    for(Account a:Trigger.new)
    {
        List<Account> acc=[Select id from Account where Name=:a.Name and Rating=:a.Rating];
        System.debug('Acc@@@@@'+acc);
        System.debug('Size of Accounts is: '+acc.size());
        if(acc.size()>0)
        {
            System.debug('Size of Accounts is: '+acc.size());
            a.addError('You Cannot Create the Duplicate Account');
        }
    }
}