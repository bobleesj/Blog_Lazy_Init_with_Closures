//: Personal Research

// You can’t create lazy let instance properties in Swift to provide constants that would only be computed if accessed 😢. That’s due to the implementation details of lazy which requires the property to be modifiable because it’s somehow initialized without a value and then later changed to the value when it’s accessed1.

// Immediately-applied closures, like the one used for the default values of lazy variables above, are automatically @noescape. This means that there is no need to use [unowned self] in that closure: there won’t even be a reference cycle here.


// Introduce @escaping and @noescaping

import UIKit

//: Init with Closure

let box: UIView = {
  let view = UIView()
  return view
}()




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


func createButton(enterTitle: String) -> UIButton {
  let button = UIButton(frame: buttonSize)
  button.backgroundColor = .black
  button.titleLabel?.text = enterTitle
  return button
}
createButton(enterTitle: "Yoyo")


//: Create Array 


struct Human {
  init() {
    print("Born 1996")
  }
}

let bob = { () -> Human in
  let human = Human()
  return human
}

let bobInstance = bob()



let bobby = { () -> Human in
  let human = Human()
  return human
}()










let SJButton: UIButton = {
  let button = UIButton(frame: buttonSize)
  button.backgroundColor = .black
  button.titleLabel?.text = "Button"
  button.titleLabel?.textColor = .white
  return button
}()


bobButton.backgroundColor = .red
bobButton.backgroundColor


let newButton = { () -> UIButton in
  let button = UIButton(frame: buttonSize)
  button.backgroundColor = .black
  button.titleLabel?.text = "Button"
  button.titleLabel?.textColor = .white
  return button
}


newButton()




let leeButton = { (enterName: String) -> UIButton in
  let button = UIButton(frame: buttonSize)
  button.titleLabel?.text = enterName
  return button
}


leeButton("Lee")

let koreaButton = { (enterName: String) -> UIButton in
  let button = UIButton(frame: buttonSize)
  button.titleLabel?.text = enterName
  return button
}("Korea")

//: Lazy


class IntenseMathProblem {
  lazy var complexNumber: Int = {
    999 * 999
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


class BobClass {
  var name = "Bob the Developer"
  //  lazy var personalizedGreeting: String = {
  //    [unowned self] in
  //    return "Hello, \(self.name)!"
  //    }()
  lazy var personalizedgreeting: String = {
    return "Hello, \(self.name)"
  }()
  
  
  
  deinit {
    print("I'm gone, bruh")
  }
}

var bobClass: BobClass? = BobClass()
bobClass?.personalizedgreeting
bobClass = nil







