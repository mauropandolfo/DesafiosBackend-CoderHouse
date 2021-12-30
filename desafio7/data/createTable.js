const { dbConfig } = require('./config.js')
const knex = require('knex')(dbConfig)

knex.schema.createTable('products', table =>{
    table.increments('id')
    table.string('name')
    table.integer('price')
    table.string('thumbnail')
})
    .then(() => console.log('table created'))
    .catch( err => {console.log(err); throw err; })
    .finally(() =>{
        knex.destroy()
    })