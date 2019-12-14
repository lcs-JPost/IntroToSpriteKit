/*:
 ## Positioning Sprites
 
 Immediately below is the code you explored on the prior page.
 
 Read past this section of code to learn how to create and position sprites.
 */

// Required frameworks
import PlaygroundSupport    // Allows playground to show live view
import SpriteKit            // Provides 2D graphics classes

// Define the animation size and scene
let frame = CGRect(x: 0, y: 0, width: 400, height: 320)
var scene = SKScene(size: frame.size)

// Define, configure, and present the scene
let view = SKView(frame: frame)
view.showsNodeCount = true
view.presentScene(scene)

// Show the view in the live view area
PlaygroundSupport.PlaygroundPage.current.liveView = view

/*:
 ### What is a sprite?
 
 Sprites can take the the form of abstract shapes – for example, via an instance of `SKShapeNode`.
 
 More commonly, sprites are created from the `SKSpriteNode` class and based on a bitmap image you provide.
 
 This means that sprites in your games or animations can be images you find online, or images you create yourself (for example, using an iPad, or by scanning hand-drawn images).
 
 - Callout(Explore):
 Click the disclosure triangle for this playground page. Do the same for the **Resources** subfolder. What do you see?
 
 ![disclosure](disclosure.png)
 
 Let's create a few sprites using images from the **Resources** folder.
 */

// Create and position a sprite at the origin, using the "circle.png" image
let circle = SKSpriteNode(imageNamed: "circle")
circle.position = CGPoint(x: 0, y: 0)
scene.addChild(circle)
/*:
 - Experiment:
 Run the playground now. What do you notice? What is the node count?
 
 It's not enough to simply create an *instance* of the `SKSpriteNode` class. For the sprite to appear, it must be added to the scene.
 
 - Experiment:
 Uncomment the code on line 63 below.
 
 Observe the change to the node count.
 
 What does the position of the sprite tell you about the location of the origin in a SpriteKit scene?
 
 What does the appearance of the circle tell you about where a sprite is "anchored"?
 
 */

//scene.addChild(circle)

/*:
 
 You can add many sprites based on the same image file.
 
 - Experiment:
 Uncomment the blocks of code below, one block at a time. Run the playground after uncommenting each block.
 
 Remember that you can select a block of code by positioning your cursor at the left edge of the first line, then hold down the **Shift** key, then press the **↓** key.
 
 Once you have selected the block of code, press the **Command** and / keys at the same time to toggle the comments off all at once.
 
 */

// Add another circle to the right of the origin
let circle2 = SKSpriteNode(imageNamed: "circle")
circle2.position = CGPoint(x: 100, y: 0)
scene.addChild(circle2)

// Add another circle further above the origin
let circle3 = SKSpriteNode(imageNamed: "circle")
circle3.position = CGPoint(x: 0, y: 200)
scene.addChild(circle3)

// Add a circle at the bottom right corner of the scene
let circle4 = SKSpriteNode(imageNamed: "circle")
circle4.position = CGPoint(x: scene.size.width, y: 0)
scene.addChild(circle4)

// Add a star at the right side of the scene, halfway up
let star = SKSpriteNode(imageNamed: "star")
star.position = CGPoint(x: scene.size.width, y: scene.size.height / 2)
scene.addChild(star)

/*:
 - Callout(Reflect):
 Does the co-ordinate system for a SpriteKit scene work like you expected?
 
 ### Exercises
 
 Write code to complete each of the following tasks.
 
 1. Add a star to the scene, centred vertically and horizontally.
 2. Add a circle to the top right corner of the scene.
 3. Add a square to the scene, centred horizontally, and at the very top of the scene.
 
 Remember to use autocomplete to your advantage:
 
 ![autocomplete](autocomplete.png)
 
 If autocomplete is not offering suggestions as shown, please quit Xcode, then reopen this project, and carry on.
 
 */

// Exercise 1: Write your code below.
let star2 = SKSpriteNode(imageNamed: "star")
star2.position = CGPoint(x: scene.size.width / 2,
                         y: scene.size.height / 2)
scene.addChild(star2)
// Exercise 2: Write your code below.
let circle5 = SKSpriteNode(imageNamed: "circle")
circle5.position = CGPoint(x: scene.size.width, y: scene.size.height)
scene.addChild(circle5)
// Exercise 3: Write your code below.
let square = SKSpriteNode(imageNamed: "square")
square.position = CGPoint(x: scene.size.width / 2, y: scene.size.height)
scene.addChild(square)


/*:
 
 [Previous: Creating a SpriteKit Scene](@previous) | Page 3 | [Next: Physics Engine](@next)
 
 
 */
