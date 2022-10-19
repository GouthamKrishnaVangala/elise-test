import eliseFunctions from "../pages/eliseFunctions";


import { Given, When, Then, DataTable } from "@cucumber/cucumber";


Given(/^I navigate to ELISE marketplace create new version page with valid credentials$/, 
  async function (dataTable:DataTable){
    var url:string = dataTable.rows()[0][0];
    var username: string = dataTable.rows()[0][1];
    var password: string = dataTable.rows()[0][2];
    await browser.url(url);
    await eliseFunctions.wait(1000);
    await browser.setTimeout({ implicit: 10000, pageLoad: 10000, script: 5000 }); 
    // await commonMethods.verifyBrowserLaunch(');
    // await commonMethods.loginWithValidCredentials(username, password);
});

Then(/^I should see the header '([^"]*)'$/, 
  async function (headerText:string){

});


