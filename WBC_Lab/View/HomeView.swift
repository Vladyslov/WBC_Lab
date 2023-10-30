//
//  Home.swift
//  WBC_Lab
//
//  Created by Vlad Ihnatenko on 29.10.2023.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    //Hiding Tab Bar
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        // TAb View With Tabs
        TabView(selection: $selectedTab){
            
            //Views
            
            Counter()
                .tag("WBCCounter")
            
            History()
                .tag("History")
            
            API()
                .tag("API")
            
            Backup()
                .tag("Backup")
            
            Settings()
                .tag("Settings")
            
            Help()
                .tag("Help")
        }
    }
}

#Preview {
    ContentView()
}

//All Sub Views
struct Counter: View {
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading,spacing: 20) {
                
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                
                VStack(alignment: .leading,spacing: 5, content: {
                    Text("Vladislav Ignatenko")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("He is Developer IOS")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
            }
        }
    }
}



struct History: View {
    var body: some View {
        NavigationView{
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct API: View {
    var body: some View {
        NavigationView{
            Text("API")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("API")
        }
    }
}


struct Backup: View {
    var body: some View {
        NavigationView{
            Text("Backup")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Backup")
        }
    }
}



struct Settings: View {
    var body: some View {
        NavigationView{
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Help: View {
    var body: some View {
        NavigationView{
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}
