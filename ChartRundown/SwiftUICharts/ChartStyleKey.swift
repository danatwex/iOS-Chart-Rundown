import SwiftUI

struct SwiftUIChartStyleKey: EnvironmentKey {
    static let defaultValue: AnySwiftUIChartStyle = AnySwiftUIChartStyle(LineSwiftUIChartStyle())
}
