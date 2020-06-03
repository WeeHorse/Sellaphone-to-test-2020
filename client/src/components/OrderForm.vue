<template>
  <main>
    <form id="order">
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
        <div>{{order_details}}</div>
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
  computed:{
    total(){
      return this.$store.state.total;
    },
    phone(){
      return this.$store.state.phone;
    },
    order_details(){
      return this.$store.state.orderDetails
    }
  }
}
</script>