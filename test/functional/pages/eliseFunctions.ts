import { DataTable } from "@cucumber/cucumber";
import { assert } from "chai";
const path = require('path');

import eliseTestObjects from "../pageObjects/eliseTestObjects";


class eliseFunctions {

  async wait(milliseconds: number): Promise<void> {
    return new Promise<void>((resolve) => {
      setTimeout(() => { resolve() }, milliseconds)
    })
  }

  async verifyBrowserLaunch(title:string){
    await browser.setTimeout({ implicit: 10000, pageLoad: 10000, script: 5000 });
    assert.strictEqual(await browser.getTitle(), title, 'Page title is not as expected in the login page');
  }

  async binaryFileUpload(fileName: string){
    const filePath = path.join(__dirname, '../../../uploadFiles/'+fileName);
    const remoteFilePath = await browser.uploadFile(filePath);
    // await (await .objUploadBinaryFile).addValue(remoteFilePath);
  }

  async loginWithValidCredentials(username:string, password:string){
    (await eliseTestObjects.objLoginUsernameField).setValue(username);
    (await eliseTestObjects.objPasswordField).setValue(password);
    (await eliseTestObjects.objLoginButton).click();
  }
  
}

export default new eliseFunctions();
