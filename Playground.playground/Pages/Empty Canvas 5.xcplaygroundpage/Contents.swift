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
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

// Draw background
canvas.drawShapesWithFill = true
let grey = Color(hue: 0, saturation: 0, brightness: 75, alpha: 100)
canvas.fillColor = grey
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)



// Draw two circles
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 100, y: 100), width: 200, height: 200)

canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 300, y: 300), width: 200, height: 200)

// Drawing gradient
for value in stride(from: 0, through: 200, by: 1){
// Set the color
let pink = Color(hue: 351, saturation: value/2, brightness: 100, alpha: 100)
    
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders = true
    canvas.borderColor = pink
    

// Draw Circles
    canvas.drawEllipse(at: Point(x: 100, y: 100), width:value , height:value  )
    
    
}
// Drawing gradient
for value in stride(from: 0, through: 200, by: 1){
// Set the color
let pink = Color(hue: 351, saturation: value/2, brightness: 100, alpha: 100)
    
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders = true
    canvas.borderColor = pink
    

// Draw Circles
    canvas.drawEllipse(at: Point(x: 300, y: 300), width:value , height:value  )
    
    
}

// Drawing squares

canvas.drawShapesWithFill = false

canvas.drawShapesWithBorders = true

//customize the borders

canvas.defaultBorderWidth = 20

canvas.borderColor = .black

// draw the rectangle



for blackrectangle in stride(from: 0, through: 400, by: 80){

    canvas.drawRectangle(at: Point(x: 0, y: 400), width: blackrectangle, height: blackrectangle, anchoredBy: AnchorPosition.centre)

}
for blackrectangle in stride(from: 0, through: 400, by: 160){
    canvas.borderColor = .white
    canvas.drawRectangle(at: Point(x: 0, y: 400), width: blackrectangle, height: blackrectangle, anchoredBy: AnchorPosition.centre)

}
// draw small square in top
canvas.drawRectangle(at: Point(x: 0, y: 390), width: 10, height: 10)


// Draw overlapping grey rectangle
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
let Grey = Color(hue: 0, saturation: 0, brightness: 75, alpha: 100)
canvas.fillColor = Grey
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

// Draw bottom left rectangles
canvas.drawShapesWithFill = false

canvas.drawShapesWithBorders = true

//customize the borders

canvas.defaultBorderWidth = 20

canvas.borderColor = .black

// draw the rectangle



for blackrectangle in stride(from: 0, through: 400, by: 80){

    canvas.drawRectangle(at: Point(x: 400, y: 0), width: blackrectangle, height: blackrectangle, anchoredBy: AnchorPosition.centre)
    

}
for blackrectangle in stride(from: 0, through: 400, by: 160){
    canvas.borderColor = .white
    canvas.drawRectangle(at: Point(x: 400, y: 0), width: blackrectangle, height: blackrectangle, anchoredBy: AnchorPosition.centre)
    

}
// draw small square in top
canvas.drawRectangle(at: Point(x: 390, y: 0), width: 10, height: 10)


// Circles in a row

canvas.highPerformance = true
for xPosition in stride(from: 0, through: 200, by: 40) {
    if xPosition.isMultiple(of: 80){
      

    // Draw the circle
canvas.drawEllipse(at: Point(x: xPosition,
                                     y: 420),
                           width: 40, height: 40)
}

// Lettering
let lightblue = Color(hue: 214, saturation: 21, brightness: 97, alpha: 100)
canvas.textColor = lightblue
canvas.drawText(message: "One Direction ", at: Point(x: 30, y: 450), size: 40, kerning: 0)
canvas.drawText(message: "On The Road Again", at: Point(x: 200, y: 430), size: 20, kerning: 0)
canvas.drawText(message: "thursday", at: Point(x: 40, y: 555), size: 10, kerning: 0)
canvas.drawText(message: "september 1, 2015", at: Point(x: 30, y: 545), size: 10, kerning: 0)
canvas.drawText(message: "Lincoln", at: Point(x: 300, y: 565), size: 10, kerning: 0)
canvas.drawText(message: "Financial Field ", at: Point(x: 280, y: 555), size: 10, kerning: 0)
canvas.drawText(message: "PHL, Pennsylvania", at: Point(x: 270, y: 545), size: 10, kerning: 0)
canvas.drawText(message: "United States", at: Point(x: 285, y: 535), size: 10, kerning: 0)


canvas.drawAxes(withScale: true, by: 20, color: .blue)
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
}
