const express =  require('express')
const Products = require('./products/products')
const { Router } = express
const router = Router()
const products = new Products(`${__dirname}/data/products.json`)
const app = express()

app.listen(8080)

app.use(express.json())
app.use(express.urlencoded({
    extended : true
}))

app.set('views', './views')
app.set('view engine', 'ejs')

app.get('/', (req, res) => {
    return res.render('ejs/index',{
        list: products.list
    })
})
app.post('/',(req, res) =>{
    const obj = req.body
    products.insert(obj)
})

router.use('/',(req, res) =>{
    return res.send(products.list)
})


app.use('/api/productos', router)