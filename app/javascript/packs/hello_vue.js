/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Vue from 'vue'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})


// The above code uses Vue without the compiler, which means you cannot
// use Vue to target elements in your existing html templates. You would
// need to always use single file components.
// To be able to target elements in your existing html/erb templates,
// comment out the above code and uncomment the below
// Add <%= javascript_pack_tag 'hello_vue' %> to your layout
// Then add this markup to your html template:
//
// <div id='hello'>
//   {{message}}
//   <app></app>
// </div>


// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'
//
// document.addEventListener('DOMContentLoaded', () => {
//   const app = new Vue({
//     el: '#hello',
//     data: {
//       message: "Can you say hello?"
//     },
//     components: { App }
//   })
// })
//
//
//
// If the project is using turbolinks, install 'vue-turbolinks':
//
// yarn add vue-turbolinks
//
// Then uncomment the code block below:
//
// import TurbolinksAdapter from 'vue-turbolinks'
// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'
//
// Vue.use(TurbolinksAdapter)
//
// document.addEventListener('turbolinks:load', () => {
//   const app = new Vue({
//     el: '#hello',
//     data: () => {
//       return {
//         message: "Can you say hello?"
//       }
//     },
//     components: { App }
//   })
// })

export default {
  data: () => ({
    presignedUrl: '',  // Rails側で発行される署名付きリンク
    uploadFile: {},    // アップロードする予定のファイル
    productId: '',     // アップロードするファイルのID
  }),

  // ...

  methods: {
    // ファイルを保存するためのレコードを作成するためにpostする
    async postProduct () {
      try {
        // フォームにref="productImage"と記述することで、ファイルをこのように取り出せる
        this.uploadFile = this.$refs.productImage.files[0]
        let postingUrl = `/api/v1/products`
        let payload = {
          product: {
            image: this.uploadFile.name
          }
        }
        let res = await axios.post(postingUrl, payload)
        // res = { data: { id: 1, image_url: "..." } }の形
        this.presignedUrl = res.data.image_url
        this.productId = res.data.id
        // サーバサイドでファイルに紐づくレコードが保存出来たので、S3へアップロード
        this.fileUpload()
      } catch(e) {
        console.error(e)
      }
    },

    async fileUpload () {
      try {
        const config = {
          headers: {
            'content-type': 'multipart/form-data'
          }
        }
        // formDataは使わずファイルをそのままアップロードする
        await this.$axios.put(this.presignedUrl, this.uploadFile, config)
      } catch(e) {
        console.error(e)
      }
    }
  }
}
