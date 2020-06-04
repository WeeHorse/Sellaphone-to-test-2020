<template>
  <div>
    <div id="confirm" v-if="showOrderConfirmation">
      <ul class="form-data">
        <li>
          <h2>Din beställning är mottagen!</h2>
        </li>
        <li v-for="(item, index) in orderItems" :key="index">{{item.key}}: {{item.val}}</li>
      </ul>
      <button @click="closeOrderConfirmation" id="return">Stäng</button>
    </div>
  </div>
</template>
<script>
export default {
  computed:{
    showOrderConfirmation(){
      return this.$store.state.showOrderConfirmation
    },
    orderItems(){
      let details = this.$store.state.orderDetails
      let k2n = this.$store.state.keysToNames
      let items = []
      for(let key in details){
        let val = details[key]||'none'
        items.push({key: k2n[key], val: val})
      }
      items.push({key: 'Phone', val: this.$store.state.phone.name})
      items.push({key: 'Contract', val: this.$store.state.contract.name})
      items.push({key: 'Data', val: this.$store.state.data.name})
      let extras = this.$store.state.extras
      for(let key in extras){
        if(extras[key].checked){
          items.push({key: 'Extra', val: k2n[key]})
        }
      }
      items.push({key: 'Your total payment', val: this.$store.state.total + 'kr'})
      return items
    }
  },
  methods:{
    closeOrderConfirmation(){
      this.$store.commit('showOrderConfirmation', false)
    }
  }
}
</script>
