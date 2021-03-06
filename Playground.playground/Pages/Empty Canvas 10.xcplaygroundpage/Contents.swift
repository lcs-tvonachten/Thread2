//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
canvas.drawAxes(withScale: true, by: 20, color: .black)
//PEN COLOR
t.setPenColor(to: .black)

// Begin writing your code below (you can remove the examples shown)
canvas.highPerformance = true
let scale = 20

// Squares for filling in
func fillSquare () {
    for i in 1...scale/2 {
        t.forward (steps: scale)
        t.left(by: 90)
        t.forward(steps: 1)
        t.left(by: 90)
        t.forward(steps: scale)
        t.right(by: 90)
        t.penUp()
        t.penDown()
        if i == scale / 2 {
            t.penUp()
        }
        t.forward(steps: 1)
        t.right(by: 90)
        if i == scale / 2 {
            t.penDown()
        }
    }
}

// Fill figure
func fillFigure() {
    for _ in 1...4 {
        fillSquare()
        t.penUp()
        t.right(by: 90)
        t.forward(steps: scale)
        t.left(by: 90)
        t.penDown()
        t.forward(steps: scale)
    }
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.backward(steps: scale * 4)
    for _ in 1...5 {
       
        fillSquare()
            t.penUp()
            t.right(by: 90)
            t.forward(steps: scale)
            t.left(by: 90)
            t.penDown()
            t.forward(steps: scale)
    
    }
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.backward(steps: scale * 5)
    for _ in 1...5 {
       
        fillSquare()
            t.penUp()
            t.right(by: 90)
            t.forward(steps: scale)
            t.left(by: 90)
            t.penDown()
            t.forward(steps: scale)
    }
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.backward(steps: scale * 5)
    for _ in 1...5 {
       
        fillSquare()
            t.penUp()
            t.right(by: 90)
            t.forward(steps: scale)
            t.left(by: 90)
            t.penDown()
            t.forward(steps: scale)
    }
        t.left(by: 90)
        t.forward(steps: scale)
        t.right(by: 90)
        t.backward(steps: scale * 4)
        for _ in 1...4 {
           
            fillSquare()
                t.penUp()
                t.right(by: 90)
                t.forward(steps: scale)
                t.left(by: 90)
                t.penDown()
                t.forward(steps: scale)
    }
}


// row repeating
    for _ in 1...3 {
        fillFigure()
        t.penUp()
        t.forward(steps: 5 * scale)
        t.right(by: 90)
        t.forward(steps: 4 * scale)
        t.left(by: 90)
        t.penDown()
        
        
    }
// set up for new row
t.penUp()
t.left(by: 90)
t.forward(steps: 5 * scale)
t.left(by: 90)
t.forward(steps: 25 * scale)
t.right(by: 180)

// 2nd row repeating
    for _ in 1...3 {
        fillFigure()
        t.penUp()
        t.forward(steps: 5 * scale)
        t.right(by: 90)
        t.forward(steps: 4 * scale)
        t.left(by: 90)
        t.penDown()
        
        
    }
// set up for new row
t.penUp()
t.left(by: 90)
t.forward(steps: 5 * scale)
t.left(by: 90)
t.forward(steps: 35 * scale)
t.right(by: 180)

// 3rd row repeating
    for _ in 1...3 {
        fillFigure()
        t.penUp()
        t.forward(steps: 5 * scale)
        t.right(by: 90)
        t.forward(steps: 4 * scale)
        t.left(by: 90)
        t.penDown()

    }

// set up for new row
t.penUp()
t.left(by: 90)
t.forward(steps: 5 * scale)
t.left(by: 90)
t.forward(steps: 25 * scale)
t.right(by: 180)

// 4th row repeating
    for _ in 1...3 {
        fillFigure()
        t.penUp()
        t.forward(steps: 5 * scale)
        t.right(by: 90)
        t.forward(steps: 4 * scale)
        t.left(by: 90)
        t.penDown()
        
        
    }
// set up for new row
t.penUp()
t.left(by: 90)
t.forward(steps: 5 * scale)
t.left(by: 90)
t.forward(steps: 35 * scale)
t.right(by: 180)

// 5th row repeating
    for _ in 1...3 {
        fillFigure()
        t.penUp()
        t.forward(steps: 5 * scale)
        t.right(by: 90)
        t.forward(steps: 4 * scale)
        t.left(by: 90)
        t.penDown()

    }
// set up for new row
t.penUp()
t.left(by: 90)
t.forward(steps: 5 * scale)
t.left(by: 90)
t.forward(steps: 25 * scale)
t.right(by: 180)

// last row repeating
    for _ in 1...3 {
        fillFigure()
        t.penUp()
        t.forward(steps: 5 * scale)
        t.right(by: 90)
        t.forward(steps: 4 * scale)
        t.left(by: 90)
        t.penDown()
        
        
    }

t.currentPosition()
t.currentHeading()
t.penUp()
t.backward(steps: scale*35)
t.right(by: 90)
t.forward(steps: scale*26)
t.left(by: 90)
t.forward(steps: 4 * scale)
t.penDown()

t.currentPosition()
t.currentHeading()

// create 2nd figure
func anotherFigure () {
    fillSquare()
    t.forward(steps: scale)
    fillSquare()
    t.penUp()
    t.backward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale * 2)
    t.left(by: 90)
    t.penDown()
    
}
for _ in 1...3{
for _ in 1...3 {
    anotherFigure()
    t.penUp()
    t.forward(steps: scale * 10 )
    t.penDown()
}
        
t.penUp()
t.backward(steps: scale * 35)
t.left(by: 90)
t.forward(steps: 5 * scale)
t.right(by: 90)
t.penDown()

for _ in 1...4 {
    anotherFigure()
    t.penUp()
    t.forward(steps: scale * 10 )
    t.penDown()
}
t.penUp()
t.backward(steps: 35 * scale)
t.left(by: 90)
t.forward(steps: scale * 5)
t.right(by: 90)
t.penDown()

}
// top row
for _ in 1...3 {
    anotherFigure()
    t.penUp()
    t.forward(steps: scale * 10 )
    t.penDown()
}
t.currentPosition()

canvas.highPerformance = false
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
