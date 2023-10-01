//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import SwiftUI


let initialExpense = 10
let expenseInterval = 5
let minExpense = 1
let maxExpense = 100

let color1 = Color.white
let minYScale = 0
let maxYScale = 110
let chartWidth: CGFloat = 350
let chartHeight: CGFloat = 400
let dataPointWidth: CGFloat = 80

let graphLineColor = Color.white
let graphLineAreaGradient = LinearGradient(
    gradient: Gradient (
        colors: [
            graphLineColor.opacity(1),
            graphLineColor.opacity(0.5),
            .clear,
        ]
    ),
    startPoint: .top,
    endPoint: .bottom
)
