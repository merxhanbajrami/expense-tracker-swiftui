//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Merxhan Bajrami on 19/14/21.
//  Copyright © 2021 Alfian Losari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DashboardTabView()
                .tabItem {
                    VStack {
                        Text("Dashboard")
                        Image(systemName: "chart.pie")
                    }
            }
            .tag(0)
            
            LogsTabView()
                .tabItem {
                    VStack {
                        Text("Logs")
                        Image(systemName: "tray")
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
