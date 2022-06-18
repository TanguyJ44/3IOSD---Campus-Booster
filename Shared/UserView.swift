//
//  UserView.swift
//  Campus Booster
//
//  Created by m1 on 24/05/2022.
//

import SwiftUI

struct UserView: View {

    @ObservedObject var datas = ReadUserData()
    
    var body: some View {
        
        VStack() {
            
            Text("Mon Profil").font(.title2.bold())
                .frame(width: 250, height: 10, alignment: .center).padding(50)
            
            HStack() {
                
                ZStack() {
                    CircularProgressView(progress: (Double(datas.user[0].promoects) * 1.0) / 60.0)
                    
                    Image(systemName: "person").resizable()
                    .frame(width: 35.0, height: 35.0)
                    
                }.frame(width: 100, height: 100).padding()
                
                VStack() {
                    Text("\(datas.user[0].lastname)").font(.title2)
                        .frame(width: 100, height: 10, alignment: .leading).padding(5)
                                    
                    Text("\(datas.user[0].firstname)").font(.title2)
                        .frame(width: 100, height: 10, alignment: .leading).padding(5)
                    
                    Text("\(datas.user[0].promo)").font(.title2)
                        .frame(width: 100, height: 10, alignment: .leading).padding(5)
                }.frame(width: 100, height: 100)
                
            }
            
            ProgressBarView(progres: (Double(datas.user[0].ects) * 250.0) / 300.0, ects: datas.user[0].ects).padding(50)
            
            Text("Email : \(datas.user[0].email)").font(.subheadline)
                .frame(width: 250, height: 10, alignment: .leading).padding(2)
            
            Text("Identifiant : \(datas.user[0].boosterid)").font(.subheadline)
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

private func progres(value: Double,
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
