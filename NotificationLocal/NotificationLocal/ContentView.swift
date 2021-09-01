//
//  ContentView.swift
//  NotificationLocal
//
//  Created by Thongchai Subsaidee on 1/9/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Button("Request permission") {
                NotificationManger.shared.requestAuthoriztion()
            }
            .padding()
            
            Button("Schedule notification Time") {
                NotificationManger.shared.scheduleNotificationTime()
            }
            .padding()
            
            Button("Schedule notification Calendar") {
                NotificationManger.shared.scheduleNotificationCalendar()
            }
            .padding()
            
            Button("Schedule notification Location") {
                NotificationManger.shared.scheduleNotificationLocation()
            }
            .padding()
            
            Button("Cancel notification") {
                NotificationManger.shared.cancelNotification()
            }
            
        }
        .onAppear{
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
