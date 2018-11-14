import Foundation

//coloque aqui o valor da ano que deseja testar
let ano = 0
var isBissexto = true

//varifica se o valor é um valor inteiro
func isInteiro(ano: Any) -> Bool{
    guard ano is Int else {
        return false
    }
    return true
}

//verifica se o númeor é multiplo de quatro
func isMultiploDeQuatro(ano: Int) -> Bool{
    if ano % 4 == 0{
        return true
    }else{
        return false
    }
    
}

//Verifica se o número é multiplo de 100, mas não é multiplo de 400
//https://pt.wikipedia.org/wiki/Ano_bissexto
func isMultiploDeCemNaoMultiploDeQuatrocentos(ano: Int) -> Bool{
    if ano % 400 == 0{
        return false
    }else{
        return true
    }
    
}

func isMaiorQueZero(ano: Int) -> Bool{
    if ano <= 0{
        return false
    }else{
        return true
    }
}

if isInteiro(ano: ano){
    if isMaiorQueZero(ano: ano){
        if isMultiploDeQuatro(ano: ano){
            if ano % 100 == 0{
                if isMultiploDeCemNaoMultiploDeQuatrocentos(ano: ano){
                    isBissexto = false
                }else{
                    isBissexto = true
                }
            }else{
                isBissexto = true
            }
        }else{
            isBissexto = false
        }
    }else{
        isBissexto = false
    }
    
}else{
    isBissexto = false
}


if isBissexto == true{
    print("É bissexto")
}else{
    print("Não é bissexto")
}






