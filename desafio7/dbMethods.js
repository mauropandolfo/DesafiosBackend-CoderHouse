const { insert } = require('./data/insert.js')
const { select } = require('./data/select.js')

class DBContainer {
    async save(content){
        await insert(content)
    }
    async getFromDB(){
        const data = await select()
        return data
    }
}

module.exports = DBContainer