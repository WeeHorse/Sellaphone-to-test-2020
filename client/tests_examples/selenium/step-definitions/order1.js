
let {$, sleep} = require('./funcs');

module.exports = function () {

this.Given(/^that I am on the website$/, async function () {
         
    await helpers.loadPage('http://localhost:8080/');
    await sleep(2000);

    let text = await $('.logo');
    let logoText = await text.getText();
    assert.include(logoText, "Sellaphone", 'You could not get the correct page.');
    await sleep(2000);
});
/*
this.Given(/^I choose a iphone G$/, async function () {
    let phone = await $('div.phone:nth-child(2) > input:nth-child(3)');
    await sleep(1500);
    phone.click();
});

this.Given(/^choose 18 mån Silver-abonnemang$/, async function () {
        let abonnemangButton = await $('#contract');
        await sleep(1500);
        abonnemangButton.click();
        await sleep(1500);
        let abonnemang = await $('#contract > option:nth-child(3)');
        await sleep(1500);
        abonnemang.click();
        await sleep(1500);

});

this.Given(/^choose 25GB data$/, async function () {
       let data = await $('div.data:nth-child(2) > input:nth-child(1)');
       await sleep(1500);
       data.click();
       await sleep(1500);

});*/

this.Given(/^click the Beställ button$/, async function () {
    let beställButton = await $('#open-order');
    await sleep(1500);
    beställButton.click();
    await sleep(1500);
});

this.When(/^I enter my firstname$/, async function () {
    let firstname = await $('#details > div:nth-child(3) > input:nth-child(1)');
    
    await sleep(1500);
    firstname.sendKeys("Lisa");
    await sleep(1500);
});

this.When(/^enter my lastname$/, async function () {
    let lastname = await $('#details > div:nth-child(3) > input:nth-child(2)');
    await sleep(1500);
    lastname.sendKeys("Gillfrost");
    await sleep(1500);
});

this.When(/^enter telephone number$/, async function () {
    let telephoneNumber = await $('#details > div:nth-child(3) > input:nth-child(3)');
    await sleep(1500);
    telephoneNumber.sendKeys("074635469");
    await sleep(1500);
});

this.When(/^enter my email$/, async function () {
    let email = await $('#details > div:nth-child(3) > input:nth-child(4)');
    await sleep(1500);
    email.sendKeys("blalba@gwow.com");
    await sleep(1500);
});

this.When(/^enter my street address$/, async function () {
    let streetAddress = await $('#details > div:nth-child(3) > input:nth-child(5)');
    await sleep(1500);
    streetAddress.sendKeys("gatuvägen 4");
    await sleep(1500);
});

this.When(/^enter zip\-code$/, async function () {
    let zip = await $('#details > div:nth-child(3) > input:nth-child(6)');
    await sleep(1500);
    zip.sendKeys("77165");
    await sleep(1500);
         
});

this.When(/^enter my cityname/, async function () {
    let city = await $('#details > div:nth-child(3) > input:nth-child(7)');
    await sleep(1500);
    city.sendKeys("Ludvika");
    await sleep(1500);
});
   
this.Then(/^I click the Skicka button and should have placed an order$/, async function () {
    let skicka = await $('#details > div:nth-child(3) > input:nth-child(8)');
    await sleep(1500);
    skicka.click();
    await sleep(1500);

});

}