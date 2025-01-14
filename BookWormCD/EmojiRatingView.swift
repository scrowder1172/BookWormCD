//
// File: EmojiRatingView.swift
// Project: BookWormCD
// 
// Created by SCOTT CROWDER on 1/14/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct EmojiRatingView: View {
    
    let rating: Int16
    
    var body: some View {
        switch rating {
        case 1:
            return Text("😒")
        case 2:
            return Text("😕")
        case 3:
            return Text("😊")
        case 4:
            return Text("😄")
        default:
            return Text("🤩")
        }
    }
}

#Preview {
    EmojiRatingView(rating: 3)
}
