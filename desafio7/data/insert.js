const { dbConfig } = require('./config.js')
const knex = require('knex')(dbConfig)

const insert = (object) =>{

    knex('products').insert(object)
        .then(() => console.log('data inserted'))
        .catch( err => {console.log(err); throw err; })
        .finally(() =>{
            knex.destroy()
        })
}
module.exports = { insert }