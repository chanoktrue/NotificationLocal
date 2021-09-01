//
//  NotificationManger.swift
//  NotificationLocal
//
//  Created by Thongchai Subsaidee on 1/9/2564 BE.
//

import SwiftUI
import UserNotifications
import CoreLocation

class NotificationManger {
    
    static let shared = NotificationManger() // Singleton
    
    func requestAuthoriztion() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { success, error in
            if let error = error {
                print("Error: \(error)")
            }else {
                print("Success")
            }
        }
    }
    
    func scheduleNotificationTime() {
        let content = UNMutableNotificationContent()
        content.title = "Notification : Time"
        content.subtitle = "subtitle... "
        content.sound = .default
        content.badge = 1
        
        // Time
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)

        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func scheduleNotificationCalendar() {
        let content = UNMutableNotificationContent()
        content.title = "Notificatin : Calendar"
        content.subtitle = "subtitle..."
        content.sound = .default
        content.badge = 1
        
        // Calendar
        var dateComponents = DateComponents()
        dateComponents.hour = 17
        dateComponents.minute = 38
        //dateComponents.weekday = 2
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func scheduleNotificationLocation() {
        let content = UNMutableNotificationContent()
        content.title = "Notification : Location"
        content.subtitle = "subtitle..."
        content.sound = .default
        content.badge = 1
        
        // Location
        let latitude: Double = 13.846869
        let longitude: Double = 100.5330562
        let center = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = CLCircularRegion(center: center, radius: 100, identifier: UUID().uuidString)
        region.notifyOnExit = true
        region.notifyOnEntry = true
        let trigger = UNLocationNotificationTrigger(region: region, repeats: true)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotification() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
    
}

