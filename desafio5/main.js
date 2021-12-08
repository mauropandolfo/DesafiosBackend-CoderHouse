const express = require('express')
const Products = require('./products/products')
const { Router } = express
const router = Router()
const products = new Products(__dirname + '/data/products.json')
const app = express()
app.use(express.json())
app.use(express.urlencoded({
    extended : true
}))
app.set('views', './views')
app.set('view engine', 'ejs')
app.get('/', (req, res) => {
    return res.render('form')
})
app.get('/list', (req, res) =>{
    return res.render('list',{
        list: products.list
    })
})
router.post('/',(req, res) =>{
    const obj = req.body
    products.insert(obj)
    return res.redirect('/list')
})
app.use('/api/productos', router)
app.listen(8080)

// router.get('/:id', (req, res) =>{
//     const id = req.params.id
//     const obj = products.find(id)
//     if(obj != null){
//         return res.json(obj)
//     }
//     else return res.json(`no se encontro el elemento ${id}`)
// })
// router.put('/:id', (req, res) =>{
//     const obj = req.body
//     const id = req.params.id
//     if(obj != undefined && id != undefined){
//         return res.json(products.update(id, obj))
//     }
//     else return `ocurrio un error al actualizar ${obj}`
// })
// router.delete('/:id', (req, res) =>{
//     const id = req.params.id
//     const del = products.deleteById(id)
//     if( del != null ){
//         del
//         res.json(`se borro el bojeto ${id}`)
//     }
//     else res.json({error: 'objeto no encontrado'})
// })