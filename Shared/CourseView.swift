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
        
        NavigationView() {
            List {
                Section(header: Text("Jour 01")) {
                    Text("Exercice 01")
                    Text("Exercice 02")
                }
                Section(header: Text("Jour 02")) {
                    Text("Exercice 01")
                    Text("Exercice 02")
                    Text("Exercice 03")
                }
                Section(header: Text("Jour 03")) {
                    Text("Exercice 01")
                }
                Section(header: Text("Jour 04")) {
                    Text("Exercice 01")
                    Text("Exercice 02")
                }
                Section(header: Text("Évaluation")) {
                    Text("Final project - 16/20")
                }
            }
            .navigationBarTitle(Text("\(course_name)"), displayMode: .inline)
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(course_name: "Cours")
    }
}
