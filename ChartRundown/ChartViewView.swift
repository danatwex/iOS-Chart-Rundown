//
//  ChartViewView.swift
//  ChartRundown
//
//  Created by Daniel Marques on 13/06/22.
//

import SwiftUI
import SwiftUICharts

struct ChartViewView: View {

    let data: [(Double, Double)]
    
    var body: some View {
        LineView(data: data.map { $0.1 })
//        LineChartView(data: data.map { $0.1 }, title: "Test")
    }
}

struct ChartViewView_Previews: PreviewProvider {
    static var previews: some View {
        let data: [(Double, Double)] =
            [(1, 1), (2, 2), (3, 4), (4, 1), (5, -2), (6, -1), (7, 1)]
        ChartViewView(data: data)
    }
}
