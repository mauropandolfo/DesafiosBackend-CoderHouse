const { dbConfig } = require('./config.js')
const knex = require('knex')(dbConfig)



const select = () =>{
    knex.from('products').select("*")
        .then((rows) =>{
            return rows.map(element => element)
        })
        .catch( err => {console.log(err); throw err; })
        .finally(() =>{
            knex.destroy()
        })
}

module.exports = { select }
