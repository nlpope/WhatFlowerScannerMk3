//
//  AppDelegate.swift
//  WhatFlowerScannerMk2
//
//  Created by Noah Pope on 5/17/24.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "WhatFlowerScannerMk2")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

/**
 --------------------------
 SHORTCUTS:
 * create new code snippets: right click + "create code snippet"
 * edit this code snippet: cmd + shift + L
 * storyboard object lisit: cmd + shift + L
 
 * edit multiple lines at once: control + shift + click away then start typing
 * duplicate a line = cmd + D
 * hide/reveal debug area = cmd + shift + Y
 * hide/reveal console = cmd + shift + C
 * hide/reveal left pane = cmd + 0
 * hide/reveal right pane = cmd + shift + 0
 * hide/reveal preview window = cmd + shift + enter
 
 --------------------------
 XXXXXXXXXXXXXXXXXXXXXXXX
 XXXXXXXXXXXXXXXXXXXXXXXX
 --------------------------
 GOALS:
 > URGENT:
 
 
 > EVENTUALLY:
 
 --------------------------
 XXXXXXXXXXXXXXXXXXXXXXXX
 XXXXXXXXXXXXXXXXXXXXXXXX
 --------------------------
 PROJECT NOTES:
 > on module 332
 > duplicated from mk2 after git push error persisted
 > testing push after initial commit
 > problem = won't push to remote repo for FlowerClassifier.mlmodel file being too large
 >> already staged? how to register .gitignore contents (check using terminal "cat .gitignore")
 >> deleting .mlm file temporarily to test push again
 >> SLTN: Wiped HEAD (backed up commits including .mlm file) completely, added & committed again, then pushed again - now gonna re-add .mlm file and let .gitignore do its job
 >>> https://stackoverflow.com/questions/3197413/how-do-i-delete-unpushed-git-commits
 >>> https://www.freecodecamp.org/news/gitignore-file-how-to-ignore-files-and-folders-in-git/
 
 > works now, testing commits again then hopping back on module 332
 --------------------------
 
 */
