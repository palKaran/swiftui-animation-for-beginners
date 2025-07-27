# SwiftUI Animations for Beginners - Example Project

This project contains all the code examples from the "SwiftUI Animations for Beginners - Complete Guide 2025" YouTube tutorial by Swift Pal.

## 📱 Project Structure

```
SwiftUIAnimations/
├── ContentView.swift                  # Main navigation view
├── Animations/
│   ├── AnimationBasicsView.swift      # withAnimation fundamentals
│   ├── AnimationCircleView.swift      # .animation() modifier examples
│   ├── TransitionsExampleView.swift   # View transitions (.slide, .opacity, etc.)
│   ├── BouncingBallView.swift         # Hands-on bouncing ball demo
└── README.md
```

## 🎯 What You'll Learn

Each view demonstrates key animation concepts covered in the video:

- **AnimationBasicsView**: How `withAnimation` creates animation contexts
- **AnimationModifierView**: When to use `.animation()` vs `withAnimation`
- **TransitionsView**: View insert/removal animations with transitions
- **BouncingBallView**: Complex layered animations with spring physics
- **CommonMistakesView**: Debugging broken animations

## 🚀 Getting Started

1. Clone or download this project
2. Open `SwiftUIAnimations.xcodeproj` in Xcode 15+
3. Run the project on iOS 17+ (Simulator or device)
4. Navigate through each example to see animations in action

## 📖 Code Examples

### Basic withAnimation
```swift
withAnimation(.easeInOut(duration: 0.5)) {
    isVisible.toggle()
}
```

### Animation Modifier
```swift
Circle()
    .scaleEffect(isPressed ? 0.8 : 1.0)
    .animation(.spring(), value: isPressed)
```

### Transitions
```swift
if showView {
    RoundedRectangle(cornerRadius: 12)
        .transition(.slide.combined(with: .opacity))
}
```

### Spring Animations
```swift
withAnimation(.spring(duration: 1.0, bounce: 0.6)) {
    ballPosition.y = targetY
}
```

## 🎬 Video Tutorial

Watch the complete tutorial: [SwiftUI Animations for Beginners - Complete Guide 2025](https://youtu.be/MO_mkFO5X68)

## 📋 Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

## 🔗 Connect with Swift Pal

- YouTube: [@swift-pal](https://youtube.com/@swift-pal)
- Twitter: [@swift_karan](https://twitter.com/swift_karan)
- LinkedIn: [karan-pal](https://www.linkedin.com/in/karan-pal)
- Medium: [@karan.pal](https://medium.com/@karan.pal)

## 📝 Notes
- Try modifying animation parameters to see how they affect the behavior
- Use the iOS Simulator's slow animations feature (⌘T) to better observe transitions
- Check out the Advanced SwiftUI Animations tutorial for more complex techniques

Happy animating! 🎉
