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
            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
            .background(Color.green.opacity(0.5))
            .cornerRadius(8)
            .padding()
            
            Button("Schedule notification Time") {
                NotificationManger.shared.scheduleNotificationTime()
            }
            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
            .background(Color.green.opacity(0.5))
            .cornerRadius(8)
            .padding()
            
            Button("Schedule notification Calendar") {
                NotificationManger.shared.scheduleNotificationCalendar()
            }
            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
            .background(Color.green.opacity(0.5))
            .cornerRadius(8)
            .padding()
            
            Button("Schedule notification Location") {
                NotificationManger.shared.scheduleNotificationLocation()
            }
            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
            .background(Color.green.opacity(0.5))
            .cornerRadius(8)
            .padding()
            
            Button("Cancel notification") {
                NotificationManger.shared.cancelNotification()
            }
            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
            .background(Color.green.opacity(0.5))
            .cornerRadius(8)
            .padding()
            
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
