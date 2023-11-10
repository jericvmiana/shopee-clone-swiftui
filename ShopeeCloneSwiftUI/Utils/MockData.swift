//
//  MockData.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/10/23.
//

import Foundation

struct MockData {
    static var randomImage: String {
        let randomImage = ["adidas", "apple", "bike", "dog", "dollars", "jobstreet", "linkedin", "macbook", "museum", "notebooks"]
        return randomImage.randomElement()!
    }
    
    static var randomName: String {
        let randomImage = ["Steve", "Paul", "Sean", "Adidas", "Nike", "JobStreet", "LinkedIn", "Apple", "PS5", "Name"]
        return randomImage.randomElement()!
    }
}
