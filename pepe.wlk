object pepe {
    var categoria = gerente
    var bonoResultado = resultadoNulo
    var bonoPresentismo = presentismoNulo
    var faltas = 0



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

    method faltas() {
        return faltas
    }

    method sueldo() {
        return  neto + bonoxresultado + bonoxpresentismo
    }

    method neto() {
            return categoria.neto()
    }
}

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

}

object fijo {

}

object resultadoNulo {

}
// Bonos presentismo

object normal {

}

object ajuste {

}

object demagogico {

}

object presentismoNulo {

}