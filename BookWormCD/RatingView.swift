//
// File: RatingView.swift
// Project: BookWormCD
// 
// Created by SCOTT CROWDER on 1/14/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    
    var label: String = ""
    var maximumRating: Int = 5
    
    var offImage: Image?
    var onImage: Image = Image(systemName: "star.fill")
    
    var offColor: Color = .gray
    var onColor: Color = .yellow
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

#Preview {
    RatingView(rating: .constant(4))
}
