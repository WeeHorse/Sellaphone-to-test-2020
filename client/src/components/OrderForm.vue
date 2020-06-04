<template>
  <main>
    <form id="order" @submit="submit">
      <div class="column">
        <h2>Välj telefon</h2>
        <Phone></Phone>
      </div>
      <div class="column">
        <h2>Välj abonnemang</h2>
        <Contract></Contract>
        <h2>Datamängd</h2>
        <Data></Data>
        <h2>Tillval</h2>
        <Extras></Extras>
      </div>
      <div class="column c-3">
        <div>
          <h2>Ditt månadspris</h2>
          <PriceCalculcator></PriceCalculcator>
        </div>
        <OrderDetails></OrderDetails>
      </div>
    </form>
  </main>
</template>

<script>
import Phone from '@/components/Phone'
import Contract from '@/components/Contract'
import Data from '@/components/Data'
import Extras from '@/components/Extras'
import PriceCalculcator from '@/components/PriceCalculcator'
import OrderDetails from '@/components/OrderDetails'
export default {
  components:{
    Phone,
    Contract,
    Data,
    Extras,
    PriceCalculcator,
    OrderDetails
  },
  methods:{
    submit(e){
      e.preventDefault()
      this.$store.commit('showOrderDetails', false)
      this.$store.commit('showOrderConfirmation', true)
    }
  }
}
</script>