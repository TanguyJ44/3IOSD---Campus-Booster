//
//  HomeView.swift
//  Campus Booster
//
//  Created by m1 on 28/05/2022.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var datas = ReadData()
    
    var body: some View {
        
        NavigationView() {
            List(datas.courses) { courses in
                NavigationLink(destination: CourseView(course_name: courses.tag)) {
                    HStack {
                        Image(systemName: courses.icon)
                            .frame(width: 50, height: 10, alignment: .center)
                        Text(courses.tag)
                            .frame(width: 100, height: 10, alignment: .center)
                        VStack {
                            Text(courses.name).font(.headline).frame(width: 100, height: 10, alignment: .center)
                        }
                    }.font(.title)
                }
            }
            .navigationBarTitle(Text("Mes matières"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
