class Movement {
    var x: Double = 0.0
    var y: Double = 0.0
    
    func moveLeft() {
        x -= 1.0
    }
    
    func moveRight() {
        x += 1.0
    }
    
    func moveUp() {
        y += 1.0
    }
    
    func moveDown() {
        y -= 1.0
    }
}
