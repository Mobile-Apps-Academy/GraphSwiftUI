//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import Foundation

let expenseDecriptionData: [String] = ["Food", "Coffee", "Transportation", "Bill Pay", "Fuel", "Snacks", "MISC"]

struct ExpenseData {
    private(set) var allExpenses: [Expense]?

    mutating func createExpenseData(days: Int) {
        self.allExpenses = []
        var selectedExpense = initialExpense
        var add = true
        
        for interval in 0...days {
            switch selectedExpense {
                
            case (maxExpense - expenseInterval + 1)..<Int.max:
                add = false
            case 0..<(minExpense + expenseInterval):
                add = true
            default:
                add = (Int.random(in: 0...4) == 3) ? !add : add
            }
            
            selectedExpense = add ? selectedExpense + Int.random(in: 0...expenseInterval) : selectedExpense - Int.random(in: 0...expenseInterval)
            let selectedDate = Calendar.current.date(byAdding: .day, value: (-1 * interval), to: Date())!
            self.allExpenses!.append(Expense(date: selectedDate, amount: Int.random(in: minExpense..<maxExpense), description: expenseDecriptionData.randomElement() ?? ""))
        }
    }
}
