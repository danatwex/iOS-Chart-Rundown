import SwiftUI

extension View {
    /// Sets the style for `SwiftUIChart` within the environment of `self`.
    public func SwiftUIChartStyle<S>(_ style: S) -> some View where S : SwiftUIChartStyle {
        self.environment(\.swiftUIChartStyle, AnySwiftUIChartStyle(style))
    }
}
