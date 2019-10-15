//
//  EnterPinView.swift
//  Xpay World
//
//  Created by Mario Juni on 14/10/2019.
//  Copyright © 2019 Mario Juni. All rights reserved.
//

import SwiftUI

struct EnterPinView: View {
    var body: some View {
        
        VStack{
            VStack{
                Spacer()
                Text("sda")
                Text("sdda")
                    .layoutPriority(-1)
            }
            VStack(alignment: .center, spacing: 10){
                HStack{
                    Button(action: {}) {
                        Text("1").bg()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("2").bg()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("3").bg()
                    }
                }
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("4").bg()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("5").bg()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("6").bg()
                    }
                }
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("7").bg()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("8").bg()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("9").bg()
                    }
                }
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("DEL").bg()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("0").bg()
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("OK").bg()
                    }
                }
                HStack{
                    Button(action: {}) {
                        Text("Foget Pin").bg()
                    }
                }
            }
        }
        .padding(.top,-150)
        .padding(.trailing,20)
        .padding(.bottom,20)
        .padding(.leading,20)
    }
}

struct  ButtonViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content.frame(maxHeight: .infinity)
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1).foregroundColor(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)))
            .lineLimit(0)
            .font(Font.system(size: 20, design: .default).bold())
            .multilineTextAlignment(.center)
    }
}
extension View {
    func bg() -> some View {
        ModifiedContent(
            content: self, modifier: ButtonViewModifier()
        )
    }
}


struct EnterPinView_Previews: PreviewProvider {
    static var previews: some View {
        EnterPinView()
    }
}
