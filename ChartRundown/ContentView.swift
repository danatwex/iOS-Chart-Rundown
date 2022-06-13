//
//  ContentView.swift
//  ChartRundown
//
//  Created by Daniel Marques on 10/06/22.
//

import SwiftUI

struct Chart: Identifiable {
    let id = UUID()
    let name: String
    var view: AnyView? = nil
    let link: String
}

struct ChartRow: View {

    let chart: Chart

    var body: some View {
        HStack {
            if chart.view == nil {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.secondary.opacity(0.2))

            } else  {
                Image(systemName: "checkmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.green)
            }
            VStack(alignment: .leading) {
                Text(chart.name)
                Text(chart.link)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }

    }
}

struct ContentView: View {

    let data: [(Double, Double)] =
        [(1, 1), (2, 2), (3, 4), (4, 1), (5, -2), (6, -1), (7, 1)]

    var body: some View {

        let charts = [
            Chart(name: "Charts",
                  view: AnyView(GindiChartView(data: data)),
                  link: "https://github.com/danielgindi/Charts"),
            Chart(name: "SwiftUI Charts",
                  view: AnyView(SwiftUIChartsView(data: data)),
                  link: "https://github.com/spacenation/swiftui-charts"),
            Chart(name: "AWLineChart",
                  view: AnyView(AWLineChartView(data: data)),
                  link: "https://github.com/tana90/AWLineChart"),
            Chart(name: "SwiftUICharts",
                  link: "https://github.com/AppPear/ChartView"),
            Chart(name: "StockCharts",
                  link: "https://github.com/denniscm190/stock-charts"),
            Chart(name: "SwiftCharts",
                  link: "https://github.com/ivanschuetz/SwiftCharts"),
            Chart(name: "DevExpress",
                  link: "https://www.devexpress.com/products/native/chart/")
        ]
        
        NavigationView {
            List(charts) { chart in
                NavigationLink(destination: ChartDetailView(chart: chart)) {
                    ChartRow(chart: chart)
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Chart Rundown")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
