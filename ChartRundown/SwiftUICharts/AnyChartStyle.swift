import SwiftUI

struct AnySwiftUIChartStyle: SwiftUIChartStyle {
    private let styleMakeBody: (SwiftUIChartStyle.Configuration) -> AnyView
    
    init<S: SwiftUIChartStyle>(_ style: S) {
        self.styleMakeBody = style.makeTypeErasedBody
    }
    
    func makeBody(configuration: SwiftUIChartStyle.Configuration) -> AnyView {
        self.styleMakeBody(configuration)
    }
}

fileprivate extension SwiftUIChartStyle {
    func makeTypeErasedBody(configuration: SwiftUIChartStyle.Configuration) -> AnyView {
        AnyView(makeBody(configuration: configuration))
    }
}
