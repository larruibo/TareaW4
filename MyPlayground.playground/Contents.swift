import UIKit

enum Velocidades : Int
{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}


class Auto
{
    var velocidad : Velocidades
    
    init()
    {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioVelocidad() -> (actual:Int, velocidadEnCadena : String)
    {
        if velocidad == Velocidades.Apagado
        {
            velocidad = Velocidades.VelocidadBaja
        }
        else if velocidad == Velocidades.VelocidadMedia
        {
            velocidad = Velocidades.VelocidadAlta
        }
        else
        {
            velocidad = Velocidades.VelocidadMedia
        }
        
        return (velocidad.rawValue, "\(velocidad)")
    }
}

var auto = Auto()
for i in 0...20
{
    if i==0
    {
        print("\(auto.velocidad.rawValue), \(auto.velocidad)")
    }
    else
    {
        var resultado = auto.cambioVelocidad()
        print("\(resultado.actual),  \(resultado.velocidadEnCadena)")
    }
    
}
