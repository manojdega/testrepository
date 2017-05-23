trigger AccountDeleteValidation on Account (before delete) {
    for(Account acc : Trigger.Old){
        if(acc.Rating == 'Hot'){
            acc.addError('You cannot Delete this Account, bacuse Its Hot');
        }
    }
}