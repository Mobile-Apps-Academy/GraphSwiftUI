//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import Foundation


struct Expense: Identifiable, Hashable {
    let id = UUID()
    let day: Date
    let amount: Int
    let description: String
    
    init(date: Date, amount: Int, description: String) {
        self.day = date
        self.amount = amount
        self.description = description
    }
}
