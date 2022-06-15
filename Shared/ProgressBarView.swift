//
//  ProgressBarView.swift
//  Campus Booster
//
//  Created by m1 on 15/06/2022.
//

import SwiftUI

struct ProgressBarView: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            RoundedRectangle(cornerRadius:20,style:.continuous)
                .frame(width:250,height:20)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius:20,style:.continuous)
                .frame(width:100,height:20)
                .foregroundColor(.blue)
            
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
