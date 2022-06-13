//
//  CourseView.swift
//  Campus Booster
//
//  Created by m1 on 24/05/2022.
//

import SwiftUI

struct CourseView: View {
    var course_name: String
    
    var body: some View {
        Text("\(course_name)")
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(course_name: "3XXX")
    }
}
