//
//  SceneDelegate.swift
//  ExpenseTracker
//
//  Created by Merxhan Bajrami on 19/14/21.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    var coreDataStack = CoreDataStack(containerName: "ExpenseTracker")

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        let contentView = ContentView()
            .environment(\.managedObjectContext, coreDataStack.viewContext)

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

