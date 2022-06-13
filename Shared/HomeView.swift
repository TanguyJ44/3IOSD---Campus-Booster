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
        Courses(icon: "network", tag: "3ERPL", name: "Odoo"),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3MLSP", name: "Azure"),
        Courses(icon: "network", tag: "3MCSA", name: "Microsoft"),
        Courses(icon: "doc.badge.gearshape", tag: "3BIGD", name: "Big Data"),
        Courses(icon: "network", tag: "3LPIC", name: "Linux"),
        Courses(icon: "person.2", tag: "3AGIL", name: "Agile"),
        Courses(icon: "person.2", tag: "3TPMG", name: "Manageur"),
        Courses(icon: "doc.badge.gearshape", tag: "3DVSC", name: "Données"),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3VRAR", name: "React"),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3ASPC", name: "C# / .Net"),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3ANDM", name: "Android"),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3IOSD", name: "Swift"),
        Courses(icon: "chevron.left.forwardslash.chevron.right", tag: "3MERN", name: "JavaScript"),
        Courses(icon: "network", tag: "3CCNA", name: "Cisco"),
        Courses(icon: "network", tag: "3SECU", name: "Sécurité"),
        Courses(icon: "star", tag: "3PROJ", name: "Projet"),
        Courses(icon: "star", tag: "3ENGL", name: "Anglais"),
    ]
    
    var body: some View {
        
        NavigationView() {
            List(modelData) { courses in
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
