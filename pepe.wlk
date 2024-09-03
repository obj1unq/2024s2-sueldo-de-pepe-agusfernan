// var property para una variable que es necesario hacer un setter y un getter.
// los arma automaticamente, pudiendolos llamar con el objeto.variable()

object pepe {
    var categoria = gerente
    var bonoResultado = resultadoNulo
    var bonoPresentismo = presentismoNulo
    var faltas = 0


// setters
    method categoria(_categoria) {
        categoria = _categoria
    }


    method bonoResultado(_bonoResultado) {
        bonoResultado = _bonoResultado
    }

    method bonoPresentismo (_bonoPresentismo) {
        bonoPresentismo = _bonoPresentismo
    }

    method faltas(_faltas) {
        faltas = _faltas
    }
// --------------------                   --------------------------

// getters
    method faltas() {
        return faltas
    }

    method sueldo() {
        return  self.neto() + self.extraResultado() + self.extraPresentismo()
    }

    method neto() {
            return categoria.neto()
    }

    method extraResultado() {
        return bonoResultado.valor(self)
    }

    method extraPresentismo() {
        return bonoPresentismo.valor(self)
    }
}

// -------------------                    --------------------------


// Categorias

object gerente {
    const sueldoNeto = 15000
    
    method neto() {
        return sueldoNeto
    }

}

object cadete {
    const sueldoNeto = 20000

    method neto() {
        return sueldoNeto
    }

}

// Bonos resultado

object porcentaje {
    method valor(empleado) {
        return empleado.neto() * 0.1
    }
}

object fijo {
    method valor(empleado) {
        return 800
    }
}

object resultadoNulo {
    method valor(empleado) {
        return 0
    }
}
// Bonos presentismo

object normal {
    method valor(empleado) {
        return (2000 - empleado.faltas() * 1000).max(0)
    }
}

object ajuste {
    method valor(empleado) {
        return if (empleado.faltas() == 0) 100 else 0
    }
}

object demagogico {
    method valor(empleado) {
        return if (empleado.neto() < 18000) 500 else 300
    }
}

object presentismoNulo {
    method valor(empleado) {
        return 0
    }
}

