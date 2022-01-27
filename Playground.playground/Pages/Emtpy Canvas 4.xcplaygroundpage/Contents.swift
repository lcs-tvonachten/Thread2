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


// Move the origin from the bottom-left corner of the canvas to it's centre point

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)
// Draw Background
canvas.drawShapesWithFill = true
let orange = Color(hue: 17, saturation: 95, brightness: 95, alpha: 100)
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

canvas.drawText(message: "talking heads", at: Point(x: 20, y: 175), size: 45, kerning: 0.0)
canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 20, y: 40), size: 10, kerning: 0.0)
canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 20, y: 20), size: 10, kerning: 0.0)
canvas.drawText(message: "at cbgb and omfug", at: Point(x: 185, y: 40), size: 10, kerning: 0.0)
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
