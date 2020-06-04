<template>
  <div id="details">
    <button id="open-order" @click="toggleOrderForm">Beställ</button>
    <input type="hidden" v-model="total" id="price" value="0" />
    <div v-if="showOrderDetails">
      <input type="text" v-model="firstName" placeholder="Förnamn" required />
      <input type="text" v-model="lastName" placeholder="Efternamn" required />
      <input type="tel" v-model="phoneNumber" placeholder="Telefonnr" required />
      <input type="email" v-model="email" placeholder="E-postadress" required />
      <input type="text" v-model="street" placeholder="Gatuadress" required />
      <input type="text" v-model="zip" placeholder="Postnr" required />
      <input type="text" v-model="city" placeholder="Ort" required />
      <input type="submit" value="Skicka" />
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      showOrderForm: false
    }
  },
  computed:{
    showOrderDetails(){
      return this.$store.state.showOrderDetails
    },
    total(){
      return this.$store.state.total
    },
    firstName:{
      get(){
        return this.$store.state.first_name
      },
      set(val){
        this.$store.commit('setOrderDetail', {first_name: val})
      }
    },
    lastName:{
      get(){
        return this.$store.state.last_name
      },
      set(val){
        this.$store.commit('setOrderDetail', {last_name: val})
      }
    },
    phoneNumber:{
      get(){
        return this.$store.state.phone_number
      },
      set(val){
        this.$store.commit('setOrderDetail', {phone_number: val})
      }
    },
    email:{
      get(){
        return this.$store.state.email
      },
      set(val){
        this.$store.commit('setOrderDetail', {email: val})
      }
    },
    street:{
      get(){
        return this.$store.state.street
      },
      set(val){
        this.$store.commit('setOrderDetail', {street: val})
      }
    },
    zip:{
      get(){
        return this.$store.state.zip
      },
      set(val){
        this.$store.commit('setOrderDetail', {zip: val})
      }
    },
    city:{
      get(){
        return this.$store.state.city
      },
      set(val){
        this.$store.commit('setOrderDetail', {city: val})
      }
    }
  },
  methods:{
    toggleOrderForm(e){
      e.preventDefault()
      this.$store.commit('showOrderDetails', !this.showOrderDetails)
    }
  }
}
</script>