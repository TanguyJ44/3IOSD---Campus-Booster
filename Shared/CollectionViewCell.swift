//
//  CollectionViewCell.swift
//  Campus Booster
//
//  Created by m1 on 26/05/2022.
//

import SwiftUI

struct CollectionViewCell: View {
      var index = 0
         init(row : Int , column : Int) {
             index =  row+column+(row*2)
         }
      var body: some View {
         
          ZStack{
              
              RoundedRectangle(cornerRadius: 10)
                  .fill(Color.lightGreen)
                  .frame(width: width, height: cell.width)
              Text("\(self.index)").foregroundColor(.white).font(.largeTitle)
              
          }.onTapGesture {
                  print("\(self.index)")
          }
        
      }
}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(row: 0, column: 1)
    }
}
