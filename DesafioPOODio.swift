class House {
    var doors: [Door]
    var windows: [Window]

    init(doors: [Door], windows: [Window]) {
        self.doors = doors
        self.windows = windows
    }

    func areAllDoorsClosed() -> Bool {
        for door in doors {
            if !door.isClosed {
                return false
            }
        }
        return true
    }

    func closeAllDoors() {
        for door in doors {
            door.close()
        }
    }

    func closeAllWindows() {
        for window in windows {
            window.close()
        }
    }
}

class Door {
    var isClosed: Bool

    init(isClosed: Bool) {
        self.isClosed = isClosed
    }

    func close() {
        isClosed = true
    }
}

class Window {
    var isClosed: Bool

    init(isClosed: Bool) {
        self.isClosed = isClosed
    }

    func close() {
        isClosed = true
    }
}

// Criação da casa com portas e janelas
let door1 = Door(isClosed: true)
let door2 = Door(isClosed: false)
let door3 = Door(isClosed: true)
let doors = [door1, door2, door3]

let window1 = Window(isClosed: true)
let window2 = Window(isClosed: true)
let window3 = Window(isClosed: true)
let windows = [window1, window2, window3]

let myHouse = House(doors: doors, windows: windows)

// Verificação das portas
while !myHouse.areAllDoorsClosed() {
    myHouse.closeAllDoors()
    myHouse.closeAllWindows()
}

print("Pode ir dormir!")
