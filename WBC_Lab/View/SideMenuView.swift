//
//  SideMenu.swift
//  WBC_Lab
//
//  Created by Vlad Ihnatenko on 29.10.2023.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var selectedTab: String
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading, spacing:  15, content: {
            
            // Profile Pic
            Image("pic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                .padding(.top,50)
            
            VStack(alignment: .leading, spacing: 6, content: {
                
                Text("WBC Counter")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: {}, label: { Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                })
            })
            
            // tab Buttons
            VStack(alignment: .leading, spacing: 10) {
                
                
                TabButton(image: "hand.tap.fill", title: "Counter", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "link.badge.plus", title: "API", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "checkmark.icloud.fill", title: "Backup", selectedTab: $selectedTab, animation: animation)
                
                
                TabButton(image: "gear", title: "Settings", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
                
                
                
                
                
            }
            .padding(.leading,-15)
            .padding(.top,50)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 6, content:  {
                Text("App Version 1.0.0")
                    .font(.caption)
                    .foregroundColor(.white)
                    .opacity(0.6)
            })
            
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}
