import store from '../../src/store/index.js'


describe('testing total calculationer', () => {

    test('check phone price to total', () => {
        store.commit('setPhone', { price: 200, name: 'iPhone Z', id: 1 })
        store.commit('updateTotal')

        expect(store.state.total).toEqual(200)
    })

    test('check phone price to total', () => {
        store.commit('setContract', { price: 150, name: '18 mån silver', id: 2 })
        store.commit('updateTotal')

        expect(store.state.total).toEqual(350)
    })


})
//se ifall rabatt på iphone z + 18 månader silver går in
describe('testing total calculationer with discounts 10% ', () => {

    test('check phone price to total', () => {
        store.commit('setPhone', { price: 200, name: "iPhone Z", id: 1 })
        store.commit('setContract', { price: 150, name: '18 mån Silver', id: 2 })
        store.commit('updateTotal')
        store.commit('updateDiscounts')

        expect(store.state.total).toEqual(350 * 0.9)
    })

})

describe('testing total calculationer with discount on watch', () => {
    //sätte namnet på klockan tsm med priset på set phone
    //sätta namnet på valt contract tillsammans med priset på det
    test('check phone price to total', () => {
        store.commit('setPhone', { price: 200, name: "Samsung Watch", id: 1 })
        store.commit('setContract', { price: 150, name: '18 mån Silver', id: 2 })
        store.commit('updateTotal')
        expect(store.state.total).toEqual(280)
    })

})