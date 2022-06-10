//
//  GindiChartView.swift
//  ChartRundown
//
//  Created by Daniel Marques on 10/06/22.
//

import SwiftUI
import Charts

struct GindiChartView: UIViewRepresentable {

    let data: [(Double, Double)]

    func makeUIView(context: Context) -> LineChartView {

        var entries = [ChartDataEntry]()
        for dataPoint in data {
            entries.append(ChartDataEntry(x: dataPoint.0, y: dataPoint.1))
        }
        let dataSet = LineChartDataSet(entries: entries)
        let chartData = LineChartData(dataSet: dataSet)
        let chart = LineChartView()
        chart.data = chartData
        return chart
    }

    func updateUIView(_ uiView: LineChartView, context: Context) {

    }

    typealias UIViewType = LineChartView

}

//struct GindiChartView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct GindiChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        GindiChartView()
//    }
//}
