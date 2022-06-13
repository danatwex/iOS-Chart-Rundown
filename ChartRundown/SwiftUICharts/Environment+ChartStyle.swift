import SwiftUI

extension EnvironmentValues {
    var swiftUIChartStyle: AnySwiftUIChartStyle {
        get {
            return self[SwiftUIChartStyleKey.self]
        }
        set {
            self[SwiftUIChartStyleKey.self] = newValue
        }
    }
}
