//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var finalReportViewModel = FinalReportViewModel()
    
    var body: some View {
        VStack {
            Text("Final Report")
                .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 36))
                .foregroundColor(.white)
            ChartView(allExpense: finalReportViewModel.allExpense)
            VStack {
                Text("All Transaction")
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 36))
                    .foregroundColor(.white)
                Divider()
                ScrollView {
                    ForEach(finalReportViewModel.allExpense!.reversed()) { expense in
                        VStack(alignment: .leading) {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(expense.description)
                                        .foregroundColor(.white)
                                        .font(.system(size: 20))
                                    
                                    Text("\(expense.day.formatted())")
                                        .font(.custom(
                                            "AmericanTypewriter",
                                            fixedSize: 10))
                                        .foregroundColor(.white)
                                    
                                }
                                Spacer()
                                Divider()
                                Text("\(expense.amount)$")
                                    .font(.custom(
                                        "AmericanTypewriter",
                                        fixedSize: 24))
                                    .foregroundColor(.white)
                            }
                        }
                        .frame(height: 70)
                        .frame(maxWidth: .infinity)
                        .padding([.leading, .trailing], 50)
                        .background(.black)
                        Divider()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .padding(.top, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
