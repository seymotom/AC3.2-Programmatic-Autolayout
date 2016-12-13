# AC3.2-Programmatic-Autolayout
Alternative to defining constraints in Storyboard

---
### Reading (Some of these you would have read already for prior lessons):
1. [Understanding AutoLayout] (https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/index.html#//apple_ref/doc/uid/TP40010853)
2. [Anatomy of a Constraint](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/AnatomyofaConstraint.html#//apple_ref/doc/uid/TP40010853-CH9-SW1)
3. [Simple Constraints](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithSimpleConstraints.html#//apple_ref/doc/uid/TP40010853-CH12-SW1)
4. [Programmatically Creating Constraints](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/ProgrammaticallyCreatingConstraints.html#//apple_ref/doc/uid/TP40010853-CH16-SW1)
5. [Visual Format Language](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage.html#//apple_ref/doc/uid/TP40010853-CH27-SW1)

#### Optional
1. [Changing Constraints](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/ModifyingConstraints.html#//apple_ref/doc/uid/TP40010853-CH29-SW1)
2. [Debugging Tips & Tricks](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/DebuggingTricksandTips.html#//apple_ref/doc/uid/TP40010853-CH21-SW1)

---
### Lesson Overview: 
1. Understand the anatomy of a constraint
2. Revisit some simple autolayout examples in storyboard
3. Translate storyboard constraints into `NSLayoutConstraint` using three methods:
  1. Long-form `init`
  2. `Visual Format Language` (VFL)
  3. `NSLayoutDimension` & `NSLayoutAnchor`
4. Look at some common errors 
5. View Debugger

---
### Lesson Objective:
Be as, and more, proficient using programmatic autolayout than using Storyboard. 

---
### Why Programmatic? 
There's a lot of ways to answer this question:

- You'll 100% encounter it in your development careers
- It's better than storyboard constraints (personal opinion)
- Less git conflicts on your storyboard
- Its more powerful and flexible than using storyboards alone
- etc...

But practically, we've been talking this entire time about understanding a problem and deconstructing it into its atomic components. Laying out your views is using that same skillset, and doing it programmatically lets you better understand how your storyboard's components are constructed. Over time and with practice, you'll be able to "read" a mockup of an app as you would with code.

> I personally find it *much* easier to work with view programmatically than using the storyboard or nibs... I can follow my own logic, but sometimes I just don't understand why storyboard does something. And because there is no "picture" of the UI infront of me, I'm forced to sketch out my thoughts and carefully plan code.

--- 
### Frames & Autolayout
It used to be the case that you had to calculate exactly the position of your views using the iPhones coordinate system. Some developers prefer this, but overall you end up writing a lot of difficult-to-understand code as a result. There was one instance where I was asked to make some changes to the layout of something a co-developer had written. Here's an small example of some of their "simpler" code:

```swift
  public override func layoutSubviews() {
    super.layoutSubviews()
    
    var x, y, w, h: CGFloat
    x = 0.0; y = 0.0; w = 20.0; h = 20.0
    self.imageView.frame = CGRectMake(x, y, w, h)
    
    x = self.imageView.frame.maxX + 5.0; y = 0.0
    w = self.bounds.width - x; h = 20.0
    self.noteLabel.frame = CGRectMake(x, y, w, h)
    
    x = 0.0; y = self.bounds.maxY - self.imageView.frame.maxY;
    w = 110.0; h = self.bounds.maxY - y
    self.button.frame = CGRectMake(x, y, w, h)
  }
```

Can you tell what it does by just skimming the code? You'd have to be a pretty good liar to convince me that you could. But I can tell you that it is intended to dynamically size some UI elements (`imageView, noteLable, button`) based on the size of their super view. 

Regardless of readability, let's go back to my situation: I'm asked to make a design change to this view never having seen the code before. Not only do I need to piece out what this code does, I'll likely try to draw it out for myself on paper/whiteboard so I don't forget it all, along with adding comments to the code, then I'll have to decided how to make the changes I need without breaking the existing, delicate, layout code.

> What did I end up doing? I told my PM that it would take too much time for me to go through the code to make a design change and it would be better to have the original developer do it. He agreed after I showed him the code and explained the issue. Fortunately it was a low-priority change, but we may have been in a bad situation if it was a critical fix. 

Autolayout does away with having to calculate frames by being expressive in its relation to other views.

---
### A
