//Importing Libraries
const cds = require('@sap/cds');


//Using the library
//Module.exports = To make the functions globally availalbe
//if module.exports is not used then the function can be called only within this file

//Using the cds library, for the services we have created, we are going to write the custom implementation
module.exports = cds.service.impl(
    //Javascript code will always be present inside the functions
    async function(){
      
     this.before('CREATE','TE',async req=>{
        let data = req.data 
        let accountId = data.account_id;
        let DataFromTollAccounts = await SELECT.from('toll_TollAccounts').where({account_id:accountId}).columns('amount');
        let amount = DataFromTollAccounts[0].amount
        if(amount<130){
            req.reject({
                code:'500',
                message:`Your Balance ${amount} is less than 130, Please Recharge`
            })
        }
        

     })

    }
);