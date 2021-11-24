const Container = require('./desafio2')

const run = async function(){
    const file = new Container('cositas.json')
    await file.init()

    const save = await file.save({nombre:'mauro', apellido:'pandolfo', edad: 27})
    console.log(`Nuevo item con id ${save}`)

    const all = file.getAll()
    console.log(`el tamaño de la lista es de ${all.length}`)

    const getId = file.getById(3)
    console.log(`el objeto es ${JSON.stringify(getId)}`)

    //file.deleteById(1)  //estos metodos estan deshabilitados para que no generen conflictos!
    
    //file.deleteAll()
}

run()