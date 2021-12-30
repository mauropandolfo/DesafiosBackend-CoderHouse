const { dbConfig } = require('./config.js')
const knex = require('knex')(dbConfig)

const products = [
    { name: 'asdasd', price: 1222, thumbnail: 'URL'},
    { name: 'asdasd', price: 3222, thumbnail: 'URL'},
    { name: 'asdasd', price: 4222, thumbnail: 'URL'},
    { name: 'asdasd', price: 9222, thumbnail: 'URL'},
    { name: 'asdasd', price: 10222, thumbnail: 'URL'},
]

knex('products').insert(products)
    .then(() => console.log('data inserted'))
    .catch( err => {console.log(err); throw err; })
    .finally(() =>{
        knex.destroy()
    })
