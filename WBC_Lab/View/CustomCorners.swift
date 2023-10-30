//
//  CustomCorners.swift
//  WBC_Lab
//
//  Created by Vlad Ihnatenko on 28.10.2023.
//

import SwiftUI
// Custom Corner Shapes
struct CustomCorners: Shape {
    
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}
