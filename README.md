# NSAttributedString

A simple example of using NSAttributedString on a UILabel. In this app we find a substring using NSRange on a NSString then add a bold attribute and underline to the found range. 

```swift 
private func stylelizeText() {
  messageLabel.text = sampleStr
  let str = NSString(string: messageLabel.text!)

  let situationStrRange = str.range(of: "Situation:")
  let taskStrRange = str.range(of: "Task:")
  let actionStrRange = str.range(of: "Action:")
  let resultStrRange = str.range(of: "Result:")


  let font = UIFont.systemFont(ofSize: 20, weight: .bold)
  let attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font,
                                                   NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue
  ]

  let attrString = NSMutableAttributedString(string: str as String, attributes: nil)

  attrString.addAttributes(attributes, range: situationStrRange)
  attrString.addAttributes(attributes, range: taskStrRange)
  attrString.addAttributes(attributes, range: actionStrRange)
  attrString.addAttributes(attributes, range: resultStrRange)

  messageLabel.attributedText = attrString
}
```

## Overview 

A string that has associated attributes (such as visual style, hyperlinks, or accessibility data) for portions of its text.

An NSAttributedString object manages character strings and associated sets of attributes (for example, font and kerning) that apply to individual characters or ranges of characters in the string. An association of characters and their attributes is called an attributed string. The cluster’s two public classes, NSAttributedString and NSMutableAttributedString, declare the programmatic interface for read-only attributed strings and modifiable attributed strings, respectively.

[Apple documentation - NSAttributedString](https://developer.apple.com/documentation/foundation/nsattributedstring)

## Some attributes you can change on a String 

* font 
* foreground color 
* background color 
* shadow 
* hyperlink 
* strike through
* underline color 
* paragraph style 


## Other resources 

1. [Apple documentation - NSAttributedString](https://developer.apple.com/documentation/foundation/nsattributedstring)
1. [Apple documentation - NSAttributedString.Key](https://developer.apple.com/documentation/foundation/nsattributedstring/key)
2. [HWS - NSAttributedString by example](https://www.hackingwithswift.com/articles/113/nsattributedstring-by-example)

