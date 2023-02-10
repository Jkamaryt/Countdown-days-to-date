//
//  ContentView.swift
//  Countdown days to date
//
//  Created by Jack Kamaryt on 2/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var months = getNumberOfMonthsUntilEndOfSemester()
    @State private var days = getNumberOfDaysUntilEndOfSemester()// / 31 - getNumberOfMonthsUntilEndOfSemester() * 31
    @State private var hours = getNumberOfHoursUntilEndOfSemester()
    @State private var minutes = getNumberOfMinutesUntilEndOfSemester()
    
    @State private var displayDays = getNumberOfDaysUntilEndOfSemester()
    
    var body: some View {
       
        
        
        NavigationView {
            VStack {
                Text("Months: \(months)")
                Text("Days: \(getNumberOfDaysUntilEndOfSemester())")
                Text("Hours: \(getNumberOfHoursUntilEndOfSemester())")
                Text("Minutes: \(getNumberOfMinutesUntilEndOfSemester())")
                Text("Seconds: \(getNumberOfSecondsUntilEndOfSemester())")    //timer that will control accurate times
                    .padding()
               // Text("Days:\(calculateDaysLeft())")
                
                
                
            }
        }
    }
}

func getNumberOfDaysUntilEndOfSemester() -> Int
        {
            
            
            let finalSemesterDateDateComponents = DateComponents(month: 6, day: 1, hour: 23, minute: 59, second: 59) //May 31st date +1 counting today
            
            let currentDate = Date() //today -> day 246...and increasing...
            
            if let nextFinalSemesterDate = Calendar.current.nextDate(after: currentDate, matching: finalSemesterDateDateComponents, matchingPolicy: .strict),
               let daysUntilNextFinalSemesterDate = Calendar.current.dateComponents([.day], from: currentDate, to: nextFinalSemesterDate).day {
                return daysUntilNextFinalSemesterDate
            }
            
            return 0
        }

func getNumberOfMonthsUntilEndOfSemester() -> Int
        {
            
            
            let finalSemesterDateDateComponents = DateComponents(month: 6, day: 1, hour: 23, minute: 59, second: 59) //May 31st date +1 counting today
            
            let currentDate = Date()
            
            if let nextFinalSemesterDate = Calendar.current.nextDate(after: currentDate, matching: finalSemesterDateDateComponents, matchingPolicy: .strict),
               let monthsUntilNextFinalSemesterDate = Calendar.current.dateComponents([.month], from: currentDate, to: nextFinalSemesterDate).month {
                return monthsUntilNextFinalSemesterDate
            }
            
            return 0
        }

func getNumberOfHoursUntilEndOfSemester() -> Int
        {
            
            
            let finalSemesterDateDateComponents = DateComponents(month: 6, day: 1, hour: 23, minute: 59, second: 59) //May 31st date +1 counting today
            
            let currentDate = Date()
            
            if let nextFinalSemesterDate = Calendar.current.nextDate(after: currentDate, matching: finalSemesterDateDateComponents, matchingPolicy: .strict),
               let hoursUntilNextFinalSemesterDate = Calendar.current.dateComponents([.hour], from: currentDate, to: nextFinalSemesterDate).hour {
                return hoursUntilNextFinalSemesterDate
            }
            
            return 0
        }

func getNumberOfMinutesUntilEndOfSemester() -> Int
        {
            
            
            let finalSemesterDateDateComponents = DateComponents(month: 6, day: 1, hour: 23, minute: 59, second: 59) //May 31st date +1 counting today
            
            let currentDate = Date()
            
            if let nextFinalSemesterDate = Calendar.current.nextDate(after: currentDate, matching: finalSemesterDateDateComponents, matchingPolicy: .strict),
               let minutesUntilNextFinalSemesterDate = Calendar.current.dateComponents([.minute], from: currentDate, to: nextFinalSemesterDate).minute {
                return minutesUntilNextFinalSemesterDate
            }
            
            return 0
        }

func getNumberOfSecondsUntilEndOfSemester() -> Int
        {
            
            
            let finalSemesterDateDateComponents = DateComponents(month: 6, day: 1, hour: 23, minute: 59, second: 59) //May 31st date +1 counting today
            
            let currentDate = Date()
            
            if let nextFinalSemesterDate = Calendar.current.nextDate(after: currentDate, matching: finalSemesterDateDateComponents, matchingPolicy: .strict),
               let secondsUntilNextFinalSemesterDate = Calendar.current.dateComponents([.second], from: currentDate, to: nextFinalSemesterDate).second {
                return secondsUntilNextFinalSemesterDate
            }
            
            return 0
        }

//func calculateDaysLeft() -> Int
//{
  //  if getNumberOfDaysUntilEndOfSemester() > 31
   // {
     //   let displayDays = getNumberOfDaysUntilEndOfSemester() % 31
   // }
  //  return displayDays
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
