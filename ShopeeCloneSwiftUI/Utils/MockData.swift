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
    
    static var randomBanner: String {
        let bannerImage = ["shopee-banner1", "shopee-banner2", "shopee-banner3"]
        return bannerImage.randomElement()!
    }
    
    static let myPurchasesItems: [AccountSectionModel] = [
        AccountSectionModel(icon: "wallet.pass", title: "To Pay"),
        AccountSectionModel(icon: "shippingbox", title: "To Ship"),
        AccountSectionModel(icon: "truck.box", title: "To Receive"),
        AccountSectionModel(icon: "star.circle", title: "To Rate"),
    ]
    
    static let myWalletItems: [AccountSectionModel] = [
        AccountSectionModel(icon: "folder", iconColor: .appPrimary, title: "Shopee Pay"),
        AccountSectionModel(icon: "dollarsign.circle",  iconColor: .yellow, title: "My Shopee Coins"),
        AccountSectionModel(icon: "note.text", iconColor: .appPrimary, title: "SPayLater"),
        AccountSectionModel(icon: "puzzlepiece.extension", iconColor: .appPrimary, title: "My Vouchers"),
    ]
}
