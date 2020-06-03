import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    phone: {price:0, id:0, name:'', features:'', image:''},
    phones:[],
    contract: {price:0, id:0, name:''},
    contracts:[],
    data: {price:0, id:0, name:''},
    datas: [],
    extras: {
      airyFlayphones:{checked:false},
      boomyBassBox:{checked:false},
      cloudyInsurance:{checked:false},
      recognizeFace:{checked:false},
    },
    orderDetails: {
      first_name: "",
      last_name: "",
      phone_number: "",
      email: "",
      street: "",
      zip: "",
      city: ""
    },
    total: 0
  },
  mutations: {
    setPhone(state, phone){
      state.phone = phone
    },
    setPhones(state, phones){
      state.phones = phones
    },
    setContract(state, id){
      if(!id||id<1){return}
      let byId = {}
      for(let c of state.contracts){
        byId[c.id] = c
      }
      state.contract = byId[id]
    },
    setContracts(state, contracts){
      state.contracts = contracts
    },
    setData(state, data){
      state.data = data
    },
    setDatas(state, datas){
      state.datas = datas
    },
    toggleExtra(state, name){
      state.extras[name].checked = !state.extras[name].checked
    },
    setOrderDetail(state, prop, val){
      state.orderDetails[prop] = val
    },
    updateTotal(state){
      console.log('state.contract', state.contract)
      console.log('state.phone', state.phone)
      state.total = state.phone.price + state.contract.price + state.data.price
    },
    updateDiscounts(state){
      if(state.phone.name === 'iPhone Z' && state.contract.name === '18 mån Silver'){
        state.total = state.total * 0.9
        console.log('10% discount')
      }
      if(state.phone.name === 'Samsung Wear' && state.contract.name === '18 mån Silver'){
        state.total = state.total * 0.8
        console.log('20% discount')
      }
      if(state.data.name === '100 GB' && state.contract.name === '24 mån Guld'){
        state.total = state.total * 0.75
        console.log('25% discount')
      }
      console.log(state.phone.name, state.contract.name, state.total)
    }
  },
  actions: {
    async fetchPhones({commit}){
      let response = await fetch('api/phones')
      let phones = await response.json()
      commit('setPhones', phones)
    },
    async fetchContracts({commit}){
      let response = await fetch('api/contracts')
      let contracts = await response.json()
      commit('setContracts', contracts)
    },
    async fetchDatas({commit}){
      let response = await fetch('api/datas')
      let datas = await response.json()
      commit('setDatas', datas)
    }
  }
})
