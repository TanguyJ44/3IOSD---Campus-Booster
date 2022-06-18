//
//  UserData.swift
//  Campus Booster
//
//  Created by m1 on 18/06/2022.
//

import Foundation

struct UserData: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case firstname
        case lastname
        case promo
        case email
        case boosterid
        case promoects
        case ects
    }
    
    var id = UUID()
    var firstname: String
    var lastname: String
    var promo: String
    var email: String
    var boosterid: String
    var promoects: Int
    var ects: Int
}

class ReadUserData: ObservableObject  {
    @Published var user = [UserData]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "user", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let user = try? JSONDecoder().decode([UserData].self, from: data!)
        self.user = user!
        
    }
     
}
