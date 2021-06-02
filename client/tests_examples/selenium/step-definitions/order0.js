let {$, sleep} = require('./funcs');

module.exports = function() {

  this.Given(/^that I'm at the Sellaphone page$/, async function () {
    await sleep(1000)
    await helpers.loadPage('http://localhost:8080/');
    await sleep(1000)
    let elem = await $('h1')
    let text = await elem.getText()
    assert(text==='Sellaphone', 'Expected to find h1 element')
    await sleep(1000)
  });


}

