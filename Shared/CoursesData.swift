//
//  CoursesData.swift
//  Campus Booster
//
//  Created by m1 on 15/06/2022.
//

import Foundation

struct CoursesData: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case icon
        case tag
        case name
    }
    
    var id = UUID()
    var icon: String
    var tag: String
    var name: String
}

class ReadData: ObservableObject  {
    @Published var courses = [CoursesData]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "courses", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let courses = try? JSONDecoder().decode([CoursesData].self, from: data!)
        self.courses = courses!
        
    }
     
}
