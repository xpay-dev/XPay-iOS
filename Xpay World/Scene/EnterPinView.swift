//
//  EnterPinView.swift
//  Xpay World
//
//  Created by Mario Juni on 02/10/2019.
//  Copyright © 2019 Mario Juni. All rights reserved.
//
import Combine
import SwiftUI


struct EnterPinView: View {
  
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            HStack{
                Group{
                    TextField("XXXX", text: .constant(""))
                    TextField("XXXX", text: .constant(""))
                    TextField("XXXX", text: .constant(""))
                    TextField("XXXX", text: .constant(""))
                }
                    .frame(maxHeight: 50)
                    .padding(.trailing, 10)
                    .padding(.leading,10)
                    .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)).cornerRadius(5)
                    .lineLimit(0)
                    .font(Font.system(size: 20, design: .default))
                    .multilineTextAlignment(.center)
                   
            }
            .padding(10)
            .padding(.top, -50)
        }
    }
}

struct CustomTextField : View {
    var body: some View {
        TextField("XXXX", text: .constant(""))
            .font(.footnote)
            .multilineTextAlignment(.center)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        //            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)).cornerRadius(5)
        
    }
}



struct EnterPinView_Previews: PreviewProvider {
    static var previews: some View {
        EnterPinView()
    }
}
