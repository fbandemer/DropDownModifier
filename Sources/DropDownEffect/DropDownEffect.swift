import SwiftUI

struct DropDownEffect: ViewModifier {
    var show : Bool
    var delay : Double
    var offset : CGFloat
    
    func body(content: Content) -> some View {
        return content
        .opacity(show ? 1 : 0.001)
        .offset(x: show ? 0 : offset)
        .scaleEffect(show ? 1 : 4)
        .animation(Animation.spring(response: 1, dampingFraction: 0.6, blendDuration: 0).delay(delay))
    }
}

extension View {
    func dropDownEffect(show: Bool, delay: Double, offset: CGFloat) -> some View {
        self.modifier(DropDownEffect(show: show, delay: delay, offset: offset))
    }
}
