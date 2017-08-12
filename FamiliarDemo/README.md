# Familiar
Text representation of familiar items in an array of that items.

```swift
let items = (1...10).map{"\($0)"}
let familiarItems = ["2","5","3"]
let familiar = Familiar(items: items, familiarItems: familiarItems)

familiar.text

// 2 and 7 others.

```

