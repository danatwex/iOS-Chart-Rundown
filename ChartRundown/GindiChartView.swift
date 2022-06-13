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

        chart.chartDescription?.enabled = false
        chart.xAxis.drawGridLinesEnabled = false
        chart.xAxis.drawLabelsEnabled = true
        chart.xAxis.drawAxisLineEnabled = false
        chart.xAxis.labelPosition = .bottom
        chart.rightAxis.enabled = false
        chart.leftAxis.enabled = false
        chart.drawBordersEnabled = false
        chart.legend.form = .none
        chart.xAxis.labelCount = 7
        chart.xAxis.forceLabelsEnabled = true
        chart.xAxis.granularityEnabled = true
        chart.xAxis.granularity = 1
        return chart
    }

    func updateUIView(_ uiView: LineChartView, context: Context) {

    }

    typealias UIViewType = LineChartView

}

struct GindiChartVieww_Previews: PreviewProvider {

    static var previews: some View {
        let data: [(Double, Double)] =
            [(1, 1), (2, 2), (3, 4), (4, 1), (5, -2), (6, -1), (7, 1)]
        GindiChartView(data: data)
    }
}

