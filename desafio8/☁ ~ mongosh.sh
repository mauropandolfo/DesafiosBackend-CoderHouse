☁  ~  mongosh
Current Mongosh Log ID: 61da01c4e694860a143c2f3a
Connecting to:          mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000
Using MongoDB:          5.0.4
Using Mongosh:          1.1.7

For mongosh info see: https://docs.mongodb.com/mongodb-shell/

------
   The server generated these startup warnings when booting:
   2022-01-07T21:58:07.118-03:00: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
------

Warning: Found ~/.mongorc.js, but not ~/.mongoshrc.js. ~/.mongorc.js will not be loaded.
  You may want to copy or rename ~/.mongorc.js to ~/.mongoshrc.js.

#creacion de DB

test> use ecommerce
switched to db ecommerce
ecommerce> db
ecommerce

#creacion de colecciones

ecommerce> db.createCollection('productos')
{ ok: 1 }
ecommerce> db.createCollection('mensajes')
{ ok: 1 }

#insert en colecciones

ecommerce> db.productos.insert([{nombre:'plancha', precio: 100, thumbnail:'URL1'},{nombre:'platos', precio: 300, thumbnail:'URL2'}, {nombre:'cubiertos', precio: 250, thumbnail:'URL3'},{nombre:'individual', precio: 120, thumbnail:'URL4'},{nombre:'tabla', precio: 1500, thumbnail:'URL5'},{nombre:'microondas', precio: 4500, thumbnail:'URL6'},{nombre:'lavaropas', precio: 5000, thumbnail:'URL7'},{nombre:'mesa', precio: 3456, thumbnail:'URL8'},{nonombre:'silla', precio: 2234, thumbnail:'URL9'},{nombre:'televisor', precio: 4999, thumbnail:'URL10'}])
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("61da0445e694860a143c2f3b"),
    '1': ObjectId("61da0445e694860a143c2f3c"),
    '2': ObjectId("61da0445e694860a143c2f3d"),
    '3': ObjectId("61da0445e694860a143c2f3e"),
    '4': ObjectId("61da0445e694860a143c2f3f"),
    '5': ObjectId("61da0445e694860a143c2f40"),
    '6': ObjectId("61da0445e694860a143c2f41"),
    '7': ObjectId("61da0445e694860a143c2f42"),
    '8': ObjectId("61da0445e694860a143c2f43"),
    '9': ObjectId("61da0445e694860a143c2f44")
  }
}
ecommerce> db.mensajes.insertMany([{usuario:'jose', mensaje:'holaaaa'},{usuario:'maria', mensaje:'holaaaa josee'}, {usuario:'pedro', mensaje:'hola a todos!'},{usuario:'liliana', mensaje:' Alguien ya compro en esta tienda?'}, {usuario:'fernando', mensaje:'yo compre, es bastante buena'}, {usuario:'liliana', mensaje:'gracias por tu respuesta fernando'},{usuario:'candela', mensaje:'holaaaa'},{usuario:'facundo', mensaje:'hola cande'},{usuario:'omar', mensaje:'hola a todos'},{usuario:'amalia', mensaje:'hola cande, omar y facu'}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("61da06bee694860a143c2f45"),
    '1': ObjectId("61da06bee694860a143c2f46"),
    '2': ObjectId("61da06bee694860a143c2f47"),
    '3': ObjectId("61da06bee694860a143c2f48"),
    '4': ObjectId("61da06bee694860a143c2f49"),
    '5': ObjectId("61da06bee694860a143c2f4a"),
    '6': ObjectId("61da06bee694860a143c2f4b"),
    '7': ObjectId("61da06bee694860a143c2f4c"),
    '8': ObjectId("61da06bee694860a143c2f4d"),
    '9': ObjectId("61da06bee694860a143c2f4e")
  }
}

#listar productos en colecciones

ecommerce> db.productos.find()
[
  {
    _id: ObjectId("61da0445e694860a143c2f3b"),
    nombre: 'plancha',
    precio: 100,
    thumbnail: 'URL1'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f3c"),
    nombre: 'platos',
    precio: 300,
    thumbnail: 'URL2'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f3d"),
    nombre: 'cubiertos',
    precio: 250,
    thumbnail: 'URL3'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f3e"),
    nombre: 'individual',
    precio: 120,
    thumbnail: 'URL4'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f3f"),
    nombre: 'tabla',
    precio: 1500,
    thumbnail: 'URL5'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f40"),
    nombre: 'microondas',
    precio: 4500,
    thumbnail: 'URL6'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f41"),
    nombre: 'lavaropas',
    precio: 5000,
    thumbnail: 'URL7'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f42"),
    nombre: 'mesa',
    precio: 3456,
    thumbnail: 'URL8'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f43"),
    nombre: 'silla',
    precio: 2234,
    thumbnail: 'URL9'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f44"),
    nombre: 'televisor',
    precio: 4999,
    thumbnail: 'URL10'
  }
]
ecommerce> db.mensajes.find()
[
  {
    _id: ObjectId("61da06bee694860a143c2f45"),
    usuario: 'jose',
    mensaje: 'holaaaa'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f46"),
    usuario: 'maria',
    mensaje: 'holaaaa josee'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f47"),
    usuario: 'pedro',
    mensaje: 'hola a todos!'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f48"),
    usuario: 'liliana',
    mensaje: ' Alguien ya compro en esta tienda?'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f49"),
    usuario: 'fernando',
    mensaje: 'yo compre, es bastante buena'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f4a"),
    usuario: 'liliana',
    mensaje: 'gracias por tu respuesta fernando'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f4b"),
    usuario: 'candela',
    mensaje: 'holaaaa'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f4c"),
    usuario: 'facundo',
    mensaje: 'hola cande'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f4d"),
    usuario: 'omar',
    mensaje: 'hola a todos'
  },
  {
    _id: ObjectId("61da06bee694860a143c2f4e"),
    usuario: 'amalia',
    mensaje: 'hola cande, omar y facu'
  }
]

#listar productos con precio menor a 1000

ecommerce> db.productos.find({"precio":{$lt:1000}})
[
  {
    _id: ObjectId("61da0445e694860a143c2f3b"),
    nombre: 'plancha',
    precio: 100,
    thumbnail: 'URL1'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f3c"),
    nombre: 'platos',
    precio: 300,
    thumbnail: 'URL2'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f3d"),
    nombre: 'cubiertos',
    precio: 250,
    thumbnail: 'URL3'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f3e"),
    nombre: 'individual',
    precio: 120,
    thumbnail: 'URL4'
  }
]

#listar productos con precio entre 1000 y 3000

ecommerce> db.productos.find({$and: [{"precio":{$gt:1000}},{"precio":{$lt:3000}}]})
[
  {
    _id: ObjectId("61da0445e694860a143c2f3f"),
    nombre: 'tabla',
    precio: 1500,
    thumbnail: 'URL5'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f43"),
    nombre: 'silla',
    precio: 2234,
    thumbnail: 'URL9'
  }
]

#listar productos con precio mayor a 3000

ecommerce> db.productos.find({"precio":{$gt:3000}})
[
  {
    _id: ObjectId("61da0445e694860a143c2f40"),
    nombre: 'microondas',
    precio: 4500,
    thumbnail: 'URL6'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f41"),
    nombre: 'lavaropas',
    precio: 5000,
    thumbnail: 'URL7'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f42"),
    nombre: 'mesa',
    precio: 3456,
    thumbnail: 'URL8'
  },
  {
    _id: ObjectId("61da0445e694860a143c2f44"),
    nombre: 'televisor',
    precio: 4999,
    thumbnail: 'URL10'
  },
  {
    _id: ObjectId("61da0832e694860a143c2f4f"),
    nombre: 'skate',
    precio: 3456,
    thumbnail: 'URL11'
  }
]

#mostrar el 3er producto con el precio mas bajo

ecommerce> db.productos.find().skip(2).limit(1).sort({precio: 1})
[
  {
    _id: ObjectId("61da0445e694860a143c2f3d"),
    nombre: 'cubiertos',
    precio: 250,
    thumbnail: 'URL3'
  }
]

#agregar el atributo stock a todos los archivos

ecommerce> db.productos.updateMany({},{$set: {"stock": 100}},false, true)
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 11,
  modifiedCount: 11,
  upsertedCount: 0
}

#cambiar el stock a 0 de los productos con precio mayor a 4000

ecommerce> db.productos.updateMany({"precio":{$gt: 4000}},{$set:{ "stock": 0}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 3,
  modifiedCount: 2,
  upsertedCount: 0
}

#borrar productos con precio menor a 1000

ecommerce> db.productos.deleteMany({"precio":{$lt:1000}})
{ acknowledged: true, deletedCount: 4 }

#crear usuario pepe solo con permisos de lectura

ecommerce> db.createUser({user: "pepe", pwd:"asd456", roles:[{role:"read", db:"ecommerce"}]})
{ ok: 1 }

