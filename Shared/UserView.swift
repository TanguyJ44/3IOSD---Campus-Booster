//
//  UserView.swift
//  Campus Booster
//
//  Created by m1 on 24/05/2022.
//

import SwiftUI

struct UserView: View {

    @State var progress: Double = 0.6
    
    var body: some View {
        
        VStack() {
            
            Text("Mon Profil").font(.title2.bold())
                .frame(width: 250, height: 10, alignment: .center).padding(50)
            
            HStack() {
                
                ZStack() {
                    CircularProgressView(progress: progress)
                    
                    Image(systemName: "person").resizable()
                    .frame(width: 35.0, height: 35.0)
                    
                }.frame(width: 100, height: 100).padding()
                
                
                VStack() {
                    Text("JOSEPH").font(.title2)
                        .frame(width: 100, height: 10, alignment: .leading).padding(5)
                                    
                    Text("Tanguy").font(.title2)
                        .frame(width: 100, height: 10, alignment: .leading).padding(5)
                    
                    Text("B.ENG 3").font(.title2)
                        .frame(width: 100, height: 10, alignment: .leading).padding(5)
                }.frame(width: 100, height: 100)

            }
            
            ProgressBarView().padding(50)
            
            Text("Email : tanguy.joseph@supinfo.com").font(.subheadline)
                .frame(width: 250, height: 10, alignment: .leading).padding(2)
            
            Text("Identifiant : 303082").font(.subheadline)
                .frame(width: 250, height: 10, alignment: .leading)
            
        }
        
    }
    
}

private func progress(value: Double,
                      maxValue: Double,
                      width: CGFloat) -> CGFloat {
    let percentage = value / maxValue
    return width *  CGFloat(percentage)
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
