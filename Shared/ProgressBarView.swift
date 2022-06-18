//
//  ProgressBarView.swift
//  Campus Booster
//
//  Created by m1 on 15/06/2022.
//

import SwiftUI

struct ProgressBarView: View {
    let progres: Double
    let ects: Int
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 250, height: 20)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: progres, height: 20)
                .foregroundColor(.blue)
            
            Text("\(Int(ects)) ECTS").font(.subheadline)
                .frame(width: 250, height: 10, alignment: .center).foregroundColor(.white).padding(2)
            
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(progres: 1.0, ects: 1)
    }
}
