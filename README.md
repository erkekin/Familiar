# Familiar
Text representation of familiar items in an array of that items.

```swift

let allLikes = ["Darwin", "Newton", "Einstein", "Hawking", "Dawkins", "Ahmet Şık"]
let myFriendsWhoLike = ["Ahmet Şık", "Can Dündar", "Darwin"]
let familiar = Familiar(items: allLikes, familiarItems: myFriendsWhoLike)

familiar.text

// Darwin and 5 others.

```

## Installation
Simply drag and drop Familiar.swift into your project. No Cocoapods, no SPM or Carthage.
