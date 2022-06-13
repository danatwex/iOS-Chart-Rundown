//
//  AWLineChartView.swift
//  ChartRundown
//
//  Created by Daniel Marques on 10/06/22.
//

import SwiftUI
import AWLineChart
import Charts

struct AWLineChartView: UIViewRepresentable {

    let data: [(Double, Double)]
    let lineChart = AWLineChart()


    func makeUIView(context: Context) -> AWLineChart {
        return lineChart
    }

    func updateUIView(_ uiView: AWLineChart, context: Context) {
        let dataSource = AWLineDataSource()
        dataSource.data = data
        lineChart.dataSource = dataSource
        lineChart.reloadData()
    }

    typealias UIViewType = AWLineChart
}

class AWLineDataSource: AWLineChartDataSource {

    var data = [(Double, Double)]()

    public func numberOfItems(in lineChart: AWLineChart) -> Int {
        return data.count
    }

    public func lineChart(_ lineChart: AWLineChart, xValueAt index: Int) -> String {
        return String(data[index].0)
    }

    func lineChart(_ lineChart: AWLineChart, yValueAt index: Int) -> CGFloat {
            return data[index].1
    }

    public func numberOfVerticalLines(in lineChart: AWLineChart) -> Int { 6 }

    public func numberOfHorizontalLines(in lineChart: AWLineChart) -> Int { 4 }

    public func numberOfBottomLabels(in lineChart: AWLineChart) -> Int { 6 }

    public func numberOfSideLabels(in lineChart: AWLineChart) -> Int { 5 }

    public func lineChart(_ lineChart: AWLineChart, verticalDashPatternAt index: Int) -> [NSNumber] { [] }

    public func lineChart(_ lineChart: AWLineChart, horizontalDashPatternAt index: Int) -> [NSNumber] { [4.0, 18.0] }

}

struct AWLineChartView_Previews: PreviewProvider {

    static var previews: some View {
        let data: [(Double, Double)] =
            [(1, 1), (2, 2), (3, 4), (4, 1), (5, -2), (6, -1), (7, 1)]
        AWLineChartView(data: data)
    }
}
