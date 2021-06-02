let {$, sleep} = require('./funcs');

module.exports = function() {

  this.Given(/^that I am on the Sellaphone campaign website$/, async function () {
    await sleep(500)
    await helpers.loadPage('http://localhost:8080/');
    await sleep(500)
    let elem = await $('h1')
    let text = await elem.getText()
    assert(text==='Sellaphone', 'Expected to find h1 element')
  });

  this.When(/^I pick the phone: "([^"]*)"$/, async function (phoneName) {
    await sleep(500);
    let foundPhone = await $(".phone:first-child>input")
    await sleep(500);
    await foundPhone.click();
    await sleep(2000);
  });

  this.When(/^the contract: "([^"]*)"$/, async function (contract) {
    await sleep(500);
    let contract = await $("#contract");
    await sleep(500);
    await contract.setValue(2);
    await sleep(1000);

  });

}

