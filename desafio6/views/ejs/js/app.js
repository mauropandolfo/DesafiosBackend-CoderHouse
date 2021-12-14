let products = []
const URLJson = 'http://localhost:8080/api/productos'

fetch(URLJson)
    .then(response => response.json())
    .then(data =>{
        try{
            console.log(data)
        }
        catch(err){
            console.log(err)
        }
    })
