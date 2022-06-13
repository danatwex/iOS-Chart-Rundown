//
//  SwiftUIChartsView.swift
//  ChartRundown
//
//  Created by Daniel Marques on 13/06/22.
//

import SwiftUI

struct SwiftUIChartsView: View {

    let data: [(Double, Double)]

    func normalize(array: [Double]) -> [Double]? {
        if let min = array.min(), let max = array.max() {
            return array.map { ($0 - min) / (max - min) }
        }
        return nil
    }

//    @State var data1: [CGFloat] = (2010...2020).map { _ in .random(in: 0.0...1.0) }
    @State var trim: CGFloat = 0

    var body: some View {
        let labels = data.map{ $0.0 }
        let data1 = data.map{ $0.1}
        HStack {
            VStack {
                AxisLabels(.vertical, data: Array(stride(from: data1.max()!, to: data1.min()!-1, by: -1)), id: \.self) {
                    Text("\($0)")
                        .fontWeight(.bold)
                        .font(Font.system(size: 8))
                        .foregroundColor(.secondary)
                }
                .frame(width: 20)

                Rectangle().foregroundColor(.clear).frame(width: 20, height: 20)
            }


            VStack {
                SwiftUIChart(data: normalize(array: data.map{ $0.1 })!)
                    .SwiftUIChartStyle(
                        LineSwiftUIChartStyle(.quadCurve, lineColor: .blue, lineWidth: 5, trimTo: $trim)
                    )
                    .padding()
                    .background(
                        GridPattern(horizontalLines: 20 + 1, verticalLines: data1.count + 1)
                            .inset(by: 1)
                            .stroke(Color.gray.opacity(0.1), style: .init(lineWidth: 2, lineCap: .round))
                    )
                    .onAppear {
                         trim = 0
                         withAnimation(.easeInOut(duration: 3)) {
                             trim = 1
                         }
                     }


                AxisLabels(.horizontal, data: labels, id: \.self) {
                    Text("\($0)".replacingOccurrences(of: ",", with: ""))
                        .fontWeight(.bold)
                        .font(Font.system(size: 8))
                        .foregroundColor(.secondary)
                }
                .frame(height: 20)
                .padding(.horizontal, 1)
            }
            .layoutPriority(1)
        }
        .padding()
    }
}

struct SwiftUIChartsView_Previews: PreviewProvider {
    static var previews: some View {
        let data: [(Double, Double)] =
            [(1, 1), (2, 2), (3, 4), (4, 1), (5, -2), (6, -1), (7, 1)]
        SwiftUIChartsView(data: data)
    }
}
