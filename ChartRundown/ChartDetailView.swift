//
//  ChartDetailView.swift
//  ChartRundown
//
//  Created by Daniel Marques on 10/06/22.
//

import SwiftUI

struct ChartDetailView: View {

    let chart: Chart

    var body: some View {
        VStack(alignment: .leading) {
            Text(chart.link)
                .font(.subheadline)
            chart.view?
                .frame(height: 250)
//                .fixedSize()
            Spacer()
        }
        .padding(.all)
        .frame(maxWidth: .infinity,
               alignment: .leading)
        .navigationBarTitle(chart.name)
    }
}

struct ChartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let data: [(Double, Double)] =
            [(1, 1), (2, 2), (3, 4), (4, 1), (5, -2), (6, -1), (7, 1)]
        ChartDetailView(chart: Chart(name: "Charts",
                                     view: AnyView(AWLineChartView(data: data)),
                                     link: "https://github.com/danielgindi/Charts"))
    }
}
