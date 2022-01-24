//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 500
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

//Draw the grid
canvas.drawAxes(withScale: true, by: 25, color: .black)
canvas.highPerformance = false

//Draw sunset sky (purple- blue)
canvas.drawShapesWithFill = true
let purple = Color(hue: 277, saturation: 95, brightness: 56, alpha: 100)
canvas.fillColor = purple
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 500, height: 100)

canvas.drawShapesWithFill = true
let pink = Color(hue: 297, saturation: 95, brightness: 56, alpha: 100)
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 300), width: 500, height: 100)

canvas.drawShapesWithFill = true
let pinkred = Color(hue: 332, saturation: 95, brightness: 65, alpha: 100)
canvas.fillColor = pinkred
canvas.drawRectangle(at: Point(x: 0, y: 250), width: 500, height: 50)

canvas.drawShapesWithFill = true
let red = Color(hue: 9, saturation: 95, brightness: 78, alpha: 100)
canvas.fillColor = red
canvas.drawRectangle(at: Point(x: 0, y: 175), width: 500, height: 75)

canvas.drawShapesWithFill = true
let orange = Color(hue: 21, saturation: 95, brightness: 89, alpha: 100)
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 100), width: 500, height: 75)

canvas.drawShapesWithFill = true
let orangeyellow = Color(hue: 36, saturation: 100, brightness: 100, alpha: 100)
canvas.fillColor = orangeyellow
canvas.drawRectangle(at: Point(x: 0, y: 50), width: 500, height: 50)

canvas.drawShapesWithFill = true
let yellow = Color(hue: 48, saturation: 95, brightness: 100, alpha: 100)
canvas.fillColor = yellow
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 50)


//Draw pandas ears
canvas.drawShapesWithFill  = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 220, y: 405), width: 65, height: 55)

canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 380, y: 405), width: 65, height: 55)

//Draw Pandas legs (left)
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 270, y: 170), width: 50, height: 100)

//Draw Pandas foot(left)
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 260, y: 132), width: 50, height: 30)

//Draw Pandas legs (right)
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 365, y: 180), width: 100, height: 40)

//Draw pandas foot(right)
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 402, y: 190), width: 32, height: 45)

//Draw pandas body
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 300, y: 245), width: 160, height: 170)

//Draw pandas arm (left)
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 230, y: 280), width: 120, height: 45)

//Draw pandas hand (left)
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 182, y: 288), width: 34, height: 45)

//Draw pandas arm (right)
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 368, y: 280), width: 120, height: 45)

//Draw pandas hand (right)
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 417, y: 287), width: 34, height: 45)

// Draw pandas Paws left
canvas.drawShapesWithFill = true
let lightyellow = Color(hue: 45, saturation: 23, brightness: 100, alpha: 100)
canvas.fillColor = lightyellow
canvas.drawEllipse(at: Point(x: 181, y: 280), width: 17, height: 15)

canvas.drawShapesWithFill = true
let Brightyellow = Color(hue: 45, saturation: 23, brightness: 100, alpha: 100)
canvas.fillColor = Brightyellow
canvas.drawEllipse(at: Point(x: 173, y: 293), width: 8, height: 10)

canvas.drawShapesWithFill = true
let Yellow = Color(hue: 45, saturation: 23, brightness: 100, alpha: 100)
canvas.fillColor = Yellow
canvas.drawEllipse(at: Point(x: 182, y: 295), width: 8, height: 10)

canvas.drawShapesWithFill = true
let Ellow = Color(hue: 45, saturation: 23, brightness: 100, alpha: 100)
canvas.fillColor = Ellow
canvas.drawEllipse(at: Point(x: 191, y: 293), width: 8, height: 10)


// Draw pandas Paws right
canvas.drawShapesWithFill = true
let Lightyellow = Color(hue: 45, saturation: 23, brightness: 100, alpha: 100)
canvas.fillColor = Lightyellow
canvas.drawEllipse(at: Point(x: 418, y: 280), width: 17, height: 15)

canvas.drawShapesWithFill = true
let brightyellow = Color(hue: 45, saturation: 23, brightness: 100, alpha: 100)
canvas.fillColor = brightyellow
canvas.drawEllipse(at: Point(x: 426, y: 293), width: 8, height: 10)

canvas.drawShapesWithFill = true
let ellow = Color(hue: 45, saturation: 23, brightness: 100, alpha: 100)
canvas.fillColor = ellow
canvas.drawEllipse(at: Point(x: 417, y: 295), width: 8, height: 10)

canvas.drawShapesWithFill = true
let Eellow = Color(hue: 45, saturation: 23, brightness: 100, alpha: 100)
canvas.fillColor = Eellow
canvas.drawEllipse(at: Point(x: 408, y: 292), width: 8, height: 10)


// Draw pandas head
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 300, y: 350), width: 200, height: 160)

// Draw pandas cheeks
canvas.drawShapesWithFill = true
let lightpink = Color(hue: 323, saturation: 33, brightness: 98, alpha: 100)
canvas.fillColor = lightpink
canvas.drawEllipse(at: Point(x: 250, y: 310), width: 30, height: 15)

canvas.drawShapesWithFill = true
let brightpink = Color(hue: 323, saturation: 33, brightness: 98, alpha: 100)
canvas.fillColor = brightpink
canvas.drawEllipse(at: Point(x: 350, y: 310), width: 30, height: 15)

// Draw pandas eyes
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 260, y: 375), width: 40, height: 50)

// Draw pandas eyes
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 335, y: 375), width: 40, height: 50)

// Draw pandas pupills
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 335, y: 380), width: 10, height: 15)

// Draw pandas pupills
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 260, y: 380), width: 10, height: 15)

// Draw nose strings
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.defaultBorderWidth = 4
canvas.drawEllipse(at: Point(x: 292, y: 335), width: 20, height: 30)

// Draw nose strings
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.defaultBorderWidth = 4
canvas.drawEllipse(at: Point(x: 310, y: 335), width: 20, height: 30)

// over lapping left
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawEllipse(at: Point(x: 285, y: 340), width: 40, height: 25)

//over lapping right
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawEllipse(at: Point(x: 310, y: 340), width: 40, height: 25)


// Draw pandas nose
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 300, y: 335), width: 30, height: 15)


/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
