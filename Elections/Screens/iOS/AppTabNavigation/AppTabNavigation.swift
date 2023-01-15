//
//  AppTabNavigation.swift
//  Elections
//
//  Created by Stanislav Kasprik on 15.01.2023.
//

import SwiftUI

struct AppTabNavigation: View {
    var body: some View {
        TabView {
            NavigationStack {
                OverallElectionResultsView()
                    .navigationTitle("Overall results")
            }
            .tabItem {
                Label("Overall results", systemImage: "tray.full.fill")
            }
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
