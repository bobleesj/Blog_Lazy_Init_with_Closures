![Magic Keyboard 2 and Mouse 2](https://cdn-images-1.medium.com/max/1800/1*KNmIy5QAOeokXPW86TtVyA.png)

# Swift Lazy Initialization with Closures 
> Learn how to create objects with modularity and readability

Welcome my lovely readers. Good to see you here today. For those who are new, I’m Bob.

## Motivation

In the beginning of my iOS journey, I followed tutorials on YouTube. I saw a few using something like below to create UI objects.

```swift 
let makeBox: UIView = {
 let view = UIView()
 return view
}()
```

As a learner, I copied the practice and used it. One day, however, one of my readers asked me, “why do you add {} and why does () exist at the end? Is it a computed property?” I could not answer. I was a zombie.
I wrote this tutorial for my younger self. Yet, some may find it useful.

## Objectives 
There are three objectives. First, understand how to initialize an object using the unconventional way as shown above. Second, learn when to use lazy var in Swift. Last, join my mailing list.

--- 
You may read the full tutorial [here](https://blog.bobthedeveloper.io/swift-lazy-initialization-with-closures-a9ef6f6312c). 
