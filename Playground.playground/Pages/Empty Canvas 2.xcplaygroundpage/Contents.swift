//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
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
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas



// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)
// Draw Background
canvas.drawShapesWithFill = true
let paleGreen = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
canvas.fillColor = paleGreen
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)


// Draw a grid of circles
canvas.textColor = .black
canvas.highPerformance = true
for xPosition in stride(from: 0, through: 400, by: 40) {
    for yPosition in stride(from: 0, through: 400, by: 40) {
        
        //Conditionally change the fill color
        if yPosition + xPosition <= 400
            && xPosition > 0
            && yPosition > 0 {
            canvas.fillColor = .white
        } else
        {
            let paleGreen = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
            canvas.fillColor = paleGreen
        }
        
// Draw the circle
        canvas.drawEllipse(at: Point(x: xPosition,
                                     y: yPosition),
                           width: 36, height: 36)
        

    }
}
canvas.highPerformance = false

        
canvas.drawText(message: "pixies", at: Point(x: 20, y: 415), size: 65)
canvas.drawText(message: "saturday", at: Point(x: 20, y: 550), size: 10)
canvas.drawText(message: "december 13 1986", at: Point(x: 20, y: 535), size: 10)
canvas.drawText(message: "9 pm over 21", at: Point(x: 20, y: 520), size: 10)
canvas.drawText(message: "at the rat", at: Point(x: 280, y: 550), size: 10)
canvas.drawText(message: "528 commonwealth", at: Point(x: 280, y: 535), size: 10)
canvas.drawText(message: "boston, mass.", at: Point(x: 280, y: 520), size: 10)

canvas.textColor = .white
canvas.drawText(message: "with", at: Point(x: 280, y: 460), size: 15)
