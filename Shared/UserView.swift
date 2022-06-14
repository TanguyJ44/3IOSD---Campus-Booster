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
        VStack {
            
            ZStack {
                CircularProgressView(progress: progress)
                
                Image(systemName: "person").resizable()
                .frame(width: 35.0, height: 35.0)
                
            }.frame(width: 100, height: 100)

        }
    }
    
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
