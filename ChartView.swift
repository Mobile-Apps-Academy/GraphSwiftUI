//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//


import SwiftUI
import Charts

struct ChartView: View {
    
    var allExpense: [Expense]?
    
    var body: some View {
        ZStack {
            VStack() {
                GroupBox () {
                    if let expenses = allExpense {
                        ScrollView(.horizontal) {
                            Chart {
                                
                                ForEach(0..<allExpense!.count, id: \.self) { i in
                                    
                                    AreaMark(
                                        x: .value("Day", allExpense![i].day),
                                        y: .value("Expense", allExpense![i].amount)
                                    )
                                    .interpolationMethod(.monotone)
                                    .foregroundStyle(graphLineAreaGradient)
                                    
                                    LineMark(
                                        x: .value("Day", allExpense![i].day),
                                        y: .value("Expense", allExpense![i].amount)
                                    )
                                    .foregroundStyle(color1)
                                    .accessibilityLabel("\(allExpense![i].day.toString())")
                                    .accessibilityValue("\(allExpense![i].amount)$")
                                    .interpolationMethod(.monotone)
                                    .symbol() {
                                        ZStack {
                                            Circle()
                                                .fill(Color.white.opacity(1))
                                                .frame(width: 20)
                                            VStack {
                                                
                                                Text("\(allExpense![i].amount)$")
                                                    .font(.system(size: 10))
                                                    .foregroundStyle(.white)
                                            }
                                            .offset(CGSize(width: 0, height: -20))
                                        }
                                        
                                    }
                                    
                                }
                                
                                    
                            }
                            .chartYScale(domain: minYScale...maxYScale)
                            .chartYAxis() {
                                
                                AxisMarks(position: .leading) {
                                    AxisGridLine(centered: true, stroke: StrokeStyle(dash: [4.0, 4.0]))
                                        .foregroundStyle(.white.opacity(0.4))
                                    
                                    
                                    let value = $0.as(Int.self)!
                                    AxisValueLabel {
                                        Text("\(value)")
                                            .foregroundStyle(Color.white)
                                            .padding([.leading, .trailing], 15)
                                    }
                                }
                            }
                            
                            .chartXAxis {
                                
                                AxisMarks(preset: .extended,
                                          position: .bottom,
                                          values: .stride (by: .day)) { value in
                                    if value.as(Date.self)!.isFirstOfMonth() {
                                        
                                        AxisGridLine()
                                            .foregroundStyle(.black.opacity(0.5))
                                        let label = "01\n\(value.as(Date.self)!.monthName())"
                                        AxisValueLabel(label).foregroundStyle(.white)
                                        
                                    } else {
                                        AxisValueLabel(
                                            format: .dateTime.day(.twoDigits)
                                        )
                                        .foregroundStyle(.white)
                                    }
                                }
                            }
                            .frame(width: dataPointWidth * CGFloat(expenses.count))
                        }
                    }
                }
                .groupBoxStyle(ChartGroupBoxStyle())
                .frame(height: chartHeight)
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 10)
                .shadow(color: .white, radius: 2)
                
            }
        }
    }
}

struct LineAreaChartView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        ChartView()
    }
}
