
let { $, sleep } = require('./funcs');


module.exports = function () {

    this.Given(/^I am on the website$/, async function () {
        //kolla vilken port din localhost kör på
        await helpers.loadPage('http://localhost:8080/');
        await sleep(2000);

        let text = await $('.logo');
        let logoText = await text.getText();
        assert.include(logoText, "Sellaphone", 'You could not get the correct page.');
        await sleep(2000);
    });

    this.Given(/^I choose a iPhone G$/, async function () {
        let phone = await $('div.phone:nth-child(2) > input:nth-child(3)');
        await sleep(1500);
        phone.click();
    });

    this.Given(/^choose 18 mån Silver-abonnemang$/, async function () {
        let abonnemangButton = await $('#contract');
        await sleep(1500);
        abonnemangButton.click();
        await sleep(1500);
        let abonnemang = await await $('#contract > option:nth-child(3)');
        await (1500);
        abonnemang.click();
        await (1500);
    });

    this.Given(/^choose 25GB data$/, async function () {
        let data = await $('div.data:nth-child(2) > input:nth-child(1)');
        await sleep(1500);
        data.click();
        await sleep(1500);
    });

    this.Given(/^click Beställ button$/, async function () {
        let beställButton = await $('#open-order');
        await sleep(1500);
        beställButton.click();
        await sleep(1500);
    });

    this.When(/^I enter my firstname$/, async function () {
        let firstName = await $('#details > div:nth-child(2) > input:nth-child(2)')
        await firstName.sendKeys('Test');
        await sleep(1500);
    });

    this.When(/^enter my lastname$/, async function () {
        let afterName = await $('#details > div:nth-child(2) > input:nth-child(3)')
        await afterName.sendKeys('Hej');
        await sleep(1500);
    });

    this.When(/^enter telephonenumber$/, async function () {
        let afterName = await $('#details > div:nth-child(2) > input:nth-child(4)')
        await afterName.sendKeys('0721239876');
        await sleep(1500);
    });

    this.When(/^enter my email$/, async function () {
        let afterName = await $('#details > div:nth-child(2) > input:nth-child(5)')
        await afterName.sendKeys('test@test.se');
        await sleep(1500);
    });

    this.When(/^enter street address$/, async function () {
        let afterName = await $('#details > div:nth-child(2) > input:nth-child(6)')
        await afterName.sendKeys('12312333');
        await sleep(1500);
    });

    this.When(/^enter zip code$/, async function () {
        let zipCode = await $('#details > div:nth-child(2) > input:nth-child(7)')
        await zipCode.sendKeys('22123');
        await sleep(1500);
    });

    this.When(/^enter city name$/, async function () {
        let zipCode = await $('#details > div:nth-child(2) > input:nth-child(8)')
        await zipCode.sendKeys('Malmö');
        await sleep(1500);
    });

    this.When(/^click the Skicka button and have an order placed$/, async function () {
        let skicka = await $('#details > div:nth-child(2) > input:nth-child(9)');
        await sleep(1500);
        skicka.click();
        await sleep(1500);
    });

}

