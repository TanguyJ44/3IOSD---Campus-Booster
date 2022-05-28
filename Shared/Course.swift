//
//  Course.swift
//  Campus Booster
//
//  Created by m1 on 26/05/2022.
//

import Foundation

struct Course: Codable, Identifiable {
    let id: String
    let name: String
    let tag: String

    static let allCourses: [Course] = Bundle.main.path("resorts.json")
    static let example = allCourses[0]
}
