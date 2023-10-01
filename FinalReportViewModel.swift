//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import Foundation

class FinalReportViewModel: ObservableObject {
    @Published private var expenseData = ExpenseData()

    init() {
        expenseData.createExpenseData(days: 100)
    }
    
    var allExpense: [Expense]? {
        expenseData.allExpenses
    }
}

