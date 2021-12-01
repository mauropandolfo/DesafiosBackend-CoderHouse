const express = require('express')
const Products = require('./products/products')
const { Router } = express

const app = express()
app.use(express.json())
app.use(express.urlencoded({
    extended : true
}))

const router = Router()
const products = new Products(__dirname + '/data/products.json')

router.get('/', (req, res) =>{
    return res.json(products.list)
})
router.get('/:id', (req, res) =>{
    let id = req.params.id
    return res.json(products.find(id))
})
router.post('/',(req, res) =>{
    let obj = req.body
    return res.json(products.insert(obj))
})
router.put('/:id', (req, res) =>{
    let obj = req.body
    let id = req.params.id
    return res.json(products.update(id, obj))
})
router.delete('/:id', (req, res) =>{
    let id = req.params.id
    return res.json(products.deleteById(id))
})

app.use('/api/productos', router)
app.use(express.static('./views'))

app.listen(8080)