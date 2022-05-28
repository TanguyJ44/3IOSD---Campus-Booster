//
//  HomeView.swift
//  Campus Booster
//
//  Created by m1 on 28/05/2022.
//

import SwiftUI

struct Courses: Identifiable {
    var id = UUID()
    var icon: String
    var tag: String
    var name: String
}

struct HomeView: View {
        
    let modelData: [Courses] = [
        Courses(icon: "network", tag: "3ERPL", name: ""),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3MLSP", name: ""),
        Courses(icon: "network", tag: "3MCSA", name: ""),
        Courses(icon: "doc.badge.gearshape", tag: "3BIGD", name: ""),
        Courses(icon: "network", tag: "3LPIC", name: ""),
        Courses(icon: "person.2", tag: "3AGIL", name: ""),
        Courses(icon: "person.2", tag: "3TPMG", name: ""),
        Courses(icon: "doc.badge.gearshape", tag: "3DVSC", name: ""),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3VRAR", name: ""),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3ASPC", name: ""),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3ANDM", name: ""),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3IOSD", name: ""),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3MERN", name: ""),
        Courses(icon: "network", tag: "3CCNA", name: ""),
        Courses(icon: "network", tag: "3SECU", name: ""),
        Courses(icon: "star", tag: "3PROJ", name: ""),
        Courses(icon: "star", tag: "3ENGL", name: ""),
    ]
        
    var body: some View {
        
        NavigationView() {
            List(modelData) { courses in
                NavigationLink(destination: Text(courses.tag).font(.largeTitle)) {
                    HStack {
                        Image(systemName: courses.icon)
                            .frame(width: 50, height: 10, alignment: .center)
                        Text(courses.tag)
                            .frame(width: 100, height: 10, alignment: .center)
                        VStack {
                            Text(courses.name)
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
