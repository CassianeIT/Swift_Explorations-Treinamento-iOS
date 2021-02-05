import Foundation



let ball = OvalShape(width: 40, height: 40)

var barriers: [Shape] = []
var targets: [Shape] = []

let funnelPoints = [
    Point(x: 0, y: 50),
    Point(x: 80, y: 50),
    Point(x: 60, y: 0),
    Point(x: 20, y: 0),
]

let funnel = PolygonShape (points: funnelPoints)

/*
 The setup() function is called once when the app launches. Without it, your app won't compile.
 Use it to set up and start your app.
 
 You can create as many other functions as you want, and declare variables and constants,
 at the top level of the file (outside any function). You can't write any other kind of code,
 for example if statements and for loops, at the top level; they have to be written inside
 of a function.
 */

fileprivate func setupBall() {
    ball.position = Point(x: 250, y: 400)
    ball.hasPhysics = true
    ball.isDraggable = false
    ball.fillColor = .magenta
    scene.add(ball)
    ball.onCollision = ballCollided(with:)
    scene.trackShape(ball)
    ball.onExitedScene = ballExitedScene
    ball.onTapped = resetGame
    ball.bounciness = 0.7
}

fileprivate func addBarrier(at position: Point, width: Double, height: Double, angle: Double) {
    let barrierPoints = [
        Point(x: 0, y: 0),
        Point(x: 0, y: height),
        Point(x: width, y: height),
        Point(x: width, y: 0),
    ]
    
    let barrier = PolygonShape(points: barrierPoints)
    barriers.append(barrier)
    
    //Adiciona uma barreira a cena
    barrier.position = position
    barrier.hasPhysics = true
    barrier.isImmobile = true
    scene.add(barrier)
    barrier.fillColor = .cyan
    barrier.angle = angle
}

fileprivate func setupFunnel() {
    // Adicionar um funil à cena.
    funnel.position = Point(x: 200, y: scene.height - 25)
    scene.add(funnel)
    funnel.fillColor = .purple
    funnel.isDraggable = false

    
    funnel.onTapped = dropBall
}

//Adiciona um alvo à cena
fileprivate func addTarget(at position: Point ) {
    
    let targetPoints = [
        Point(x: 10, y: 0),
        Point(x: 0, y: 10),
        Point(x: 10, y: 20),
        Point(x: 20, y: 10),
    ]
    
    let target =  PolygonShape (points: targetPoints)
    targets.append(target)
    
    // Código setupTarget existente abaixo.
    target.position = position
    target.hasPhysics = true
    target.isImmobile = true
    target.isImpermeable = false
    target.fillColor = .blue
    scene.add(target)
    target.name = "target"
    //target.isDraggable = false

}

func setup() {
    setupBall()
    addBarrier(at: Point (x: 250, y: 120) , width: 80, height: 15, angle: -0.1)
    addBarrier(at: Point (x: 300, y: 123) , width: 80, height: 20, angle: 0.0)
    addBarrier(at: Point (x: 150, y: 223) , width: 100, height: 25, angle: 0.2)

    setupFunnel()
    addTarget(at: Point(x: 274, y: 535))
    addTarget(at: Point(x: 143, y: 358))
    addTarget(at: Point(x: 133, y: 133))
    resetGame()
    scene.onShapeMoved = printPosition(of:)
}

// Libera a bola movendo-a para a posição do funil.
func dropBall() {
    ball.position = funnel.position
    ball.stopAllMotion()
    
    for barrier in barriers {
        barrier.isDraggable = false
    }
    
    for target in targets {
        target.fillColor = .blue
    }
}

// Processar colisões entre bola e os alvos.
func ballCollided(with otherShape:  Shape){
    if otherShape.name != "target" { return }
    otherShape.fillColor = .green
    
}

func ballExitedScene () {
    var hitTargets = 0
    
    for target in targets {
        if target.fillColor == .green {
            hitTargets += 1
        }
        
        if hitTargets == targets.count {
            print("Uhuuuu, você ganhou!")
            scene.presentAlert(text: "Você ganhou!", completion: alertDismissed)
        }
        
        for barrier in barriers {
            barrier.isDraggable = true
        }
    }
}
    
    
    func alertDismissed() {
    }
    // Reinicia o jogo removendo a bola abaixo da cena,
    // o que desbloqueará as barreiras.
    
    func resetGame() {
        ball.position = Point(x: 0, y: -80)
    }

func printPosition(of shape: Shape) {
    print(shape.position)
}


