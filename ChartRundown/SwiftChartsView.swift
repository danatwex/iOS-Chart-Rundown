//
//  SwiftChartsView.swift
//  ChartRundown
//
//  Created by Daniel Marques on 14/06/22.
//

//import SwiftUI
//import SwiftCharts
//
//struct SwiftChartsView: UIViewRepresentable {
//
//    typealias UIViewType = LineChart
//
//    let data: [(Double, Double)]
//
//    func makeUIView(context: Context) -> LineChart {
//
//        let xAxisConfig = ChartAxisConfig(from: <#Double#>, to: <#Double#>, by: <#Double#>
//
//        var chart = LineChart(frame: CGRect(x: 0, y: 0, width: 250, height: 250), chartConfig: <#T##ChartConfigXY#>, xTitle: <#T##String#>, yTitle: <#T##String#>, line: <#T##LineChart.ChartLine#>)
//        return chart
//    }
//
//    func updateUIView(_ uiView: LineChart, context: Context) {
//
//    }
//}
//
//struct SwiftChartsView_Preview: PreviewProvider {
//    static var previews: some View {
//        let data: [(Double, Double)] =
//            [(1, 1), (2, 2), (3, 4), (4, 1), (5, -2), (6, -1), (7, 1)]
//        SwiftChartsView(data: data)
//    }
//}
