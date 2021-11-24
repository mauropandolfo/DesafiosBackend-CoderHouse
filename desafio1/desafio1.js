class User {
    constructor(name, lastname){
        this.nombre = name
        this.apellido = lastname
        this.libros = []
        this.mascotas = []
    }
    getFullName(){
        return `${this.nombre} ${this.apellido}`
    }
    addMascota(pet){
        this.mascotas.push(pet)
    }
    countMascotas(){
        return this.mascotas.length
    }
    addBook(name, auth){
        let libro = {
            titulo: name,
            autor: auth
        }
        this.libros.push(libro)
    }
    getBookNames(){
        return this.libros.map(book => book.titulo)
    }
}


let usuario = new User('pedro','garcia')

console.log(usuario)


console.log (usuario.getFullName())
usuario.addMascota('gato')
usuario.addMascota('perro')
console.log(usuario.countMascotas())
usuario.addBook('libro1','autor1')
usuario.addBook('libro2','autor2')
console.log(usuario.getBookNames())