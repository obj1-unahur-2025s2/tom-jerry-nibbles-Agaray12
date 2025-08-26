object tom {
    var energia = 50
    var ultimoRatonComido = null
    var metrosRecorridos = 0  

    method getUltimoRaton() {
        return ultimoRatonComido
    }

    method getMetrosRecorridos() {
        return metrosRecorridos
    }

    method getEnergia(){
        return energia
    }

    method correr(distancia){
        energia = energia - (distancia / 2)
        metrosRecorridos = distancia
    }
     
    method comer(raton) {
        energia = energia + 12 + raton.getPeso()
        ultimoRatonComido = raton
    }

    method getVelocidadMaxima(){
        return 5 + energia / 10
    }

    method puedeCazar(distancia){ 
        return self.getEnergia() - (distancia / 2) >= 0
    }

    method cazarSiPuede(raton, distancia){
        if(self.puedeCazar(distancia)){
            self.cazar(raton, distancia)
        }
    }

    method cazar(raton, distancia){
        self.correr(distancia)
        self.comer(raton)
    }
}

object jerry {
    var edad = 2
    var peso = 0

    method getPeso(){
        return peso
    }

    method setPeso(){
        peso = edad * 20
    }

    method getEdad(){
        return edad
    }

    method setEdad(){
        edad = edad + 1
    }
}

object nibbles {
    method getPeso(){
        return 35
    }

}

object bob {
    method getPeso() {
        return 25
    }
}

// Inventar otro ratón