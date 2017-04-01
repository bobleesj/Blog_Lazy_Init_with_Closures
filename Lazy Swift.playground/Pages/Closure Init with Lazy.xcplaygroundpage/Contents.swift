/*:
 
 ## Swift Retention Cycle in Closures and Delegate with Bob
 Full tutotiral originally published on Bob the Developer by Bob Lee
 - Last Update on April 1st, 2017
 - Swift 3 & iOS 10
 
 */


import UIKit

//: Motivation
let box: UIView = {
  let view = UIView()
  return view
}()



//: Create UI Components

let buttonSize = CGRect(x: 0, y: 0, width: 100, height: 100)

// ViewControllerOne
let bobButton = UIButton(frame: buttonSize)
bobButton.backgroundColor = .black
bobButton.titleLabel?.text = "Bob"
bobButton.titleLabel?.textColor = .white

// ViewControllerTwo
let bobbyButton = UIButton(frame: buttonSize)
bobbyButton.backgroundColor = .black
bobbyButton.titleLabel?.text = "Bobby"
bobbyButton.titleLabel?.textColor = .white

//: Create Button with Function
func createButton(enterTitle: String) -> UIButton {
  let button = UIButton(frame: buttonSize)
  button.backgroundColor = .black
  button.titleLabel?.text = enterTitle
  return button
}
createButton(enterTitle: "Yoyo")


//: Introducing Unconventional Way
struct Human {
  init() {
    print("Born 1996")
  }
}

let createBob = { () -> Human in
  let human = Human()
  return human
}

let bobInstance = createBob()



let bobby = { () -> Human in
  let human = Human()
  return human
}()



//: Creat UIView Unconventionally
let bobView = { () -> UIView in
  let view = UIView()
  view.backgroundColor = .black
  return view
}()

let bobbyView: UIView = {
  let view = UIView()
  view.backgroundColor = .black
  return view
}()


//: Easier to Change Name
let myButton: UIButton = {
  let button = UIButton(frame: buttonSize)
  button.backgroundColor = .black
  button.titleLabel?.text = "Button"
  button.titleLabel?.textColor = .white
  button.layer.cornerRadius = 3
  button.layer.masksToBounds = true
  return button
}()


bobButton.backgroundColor = .red
bobButton.backgroundColor



let leeButton = { (enterName: String) -> UIButton in
  let button = UIButton(frame: buttonSize)
  button.titleLabel?.text = enterName
  return button
}


leeButton("Lee")


//: Lazy


class IntenseMathProblem {
  lazy var complexNumber: Int = {
    1 * 1
  }()
  
}


class SortFromDataBase {
  lazy var sortNumberFromDatabase: [Int] = {
    // Caluation and sorting
    [1, 2, 3, 4, 5, 6, 7, 8, 9]
  }()
}


class CompressionManager {
  lazy var compressedImage: UIImage = {
    let image = UIImage()
    // Compress the image
    // Logic
    return image
  }()
}



IntenseMathProblem().complexNumber
// Calculated later


class BobGreet {
  var name = "Bob the Developer"
  //  lazy var personalizedGreeting: String = {
  //    [unowned self] in
  //    return "Hello, \(self.name)!"
  //    }()
  lazy var greeting: String = {
    return "Hello, \(self.name)"
  }()
  
  
  
  deinit {
    print("I'm gone, bruh")
  }
}

var bobGreet: BobGreet? = BobGreet()
bobGreet?.greeting
bobGreet = nil


/*:
 > Follow me on [Instagram](https://instagram.com/bobthedev) and [Facebook Page](https://facebook.com/bobthedeveloper) for personal journey and regular updates! All of my free resources available [here](https://learnswiftwithbob.com/RESOURCES.html)
 */




