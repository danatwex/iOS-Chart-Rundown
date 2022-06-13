import SwiftUI

/// Defines the implementation of all `SwiftUIChart` instances within a view
/// hierarchy.
///
/// To configure the current `SwiftUIChart` for a view hiearchy, use the
/// `.SwiftUIChartStyle()` modifier.
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol SwiftUIChartStyle {
    /// A `View` representing the body of a `SwiftUIChart`.
    associatedtype Body : View

    /// Creates a `View` representing the body of a `SwiftUIChart`.
    ///
    /// - Parameter configuration: The properties of the value slider instance being
    ///   created.
    ///
    /// This method will be called for each instance of `SwiftUIChart` created within
    /// a view hierarchy where this style is the current `SwiftUIChartStyle`.
    func makeBody(configuration: Self.Configuration) -> Self.Body

    /// The properties of a `SwiftUIChart` instance being created.
    typealias Configuration = SwiftUIChartStyleConfiguration
}
