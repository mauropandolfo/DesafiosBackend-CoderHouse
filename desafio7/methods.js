const { db } = require('./config/data.js')

class Container{
    constructor(table_name){
        this.table = table_name
        this.knex = require('knex')(db)
    }
    async init() {
        await this.knex.schema.createTableIfNotExists(this.table, table => {
            table.increments()
            table.string('nombre', 15)
            table.string('thumbnail', 30)
            table.float('precio')
        })
        .finally(() => {
            this.knex.destroy()
        })
    }

    async save(object){
        try{
            return await this.knex(this.table).insert([object])
            .finally(() => {
                this.knex.destroy()
            })
        }
        catch(err){
            return `Ocurrio un error al guardar el datos en la DB ${err}`
        }
    }

    async getById(id){
        try{
            return await this.knex.from(this.table).select("*").where('id', id).limit(1)
            .finally(() => {
                this.knex.destroy()
            })
        }
        catch(err){
            return `Hubo un error al buscar el elemento en la DB ${err}`
        }
    }

    async getAll(){
        try{
            return await this.knex.from(this.table).select("*")
            .finally(() => {
                this.knex.destroy()
            })
        }
        catch(err){
            return `Hubo un error al buscar el elemento en la DB ${err}`
        }
    }
    async deleteById(id){
        try{
            return await this.knex(this.table).where('id', id).del()
            .finally(() => {
                this.knex.destroy()
            })
        }
        catch(err){
            return `Hubo un error al borrar el elemento en la DB${err}`
        }
    }

}

module.exports = Container
