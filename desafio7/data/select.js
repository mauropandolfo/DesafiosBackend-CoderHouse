const { dbConfig } = require('./config.js')
const knex = require('knex')(dbConfig)

knex.from('products').select("*").where('price', '>', '5000')
    .then((rows) =>{
        for(const row of rows){
            console.log(`${row['id']} ${row['name']} ${row.price} ${row['thumbnail']}`)
        }
    })
    .catch( err => {console.log(err); throw err; })
    .finally(() =>{
        knex.destroy()
    })