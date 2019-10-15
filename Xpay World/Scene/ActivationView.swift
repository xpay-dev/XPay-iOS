//
//  EnterPinView.swift
//  Xpay World
//
//  Created by Mario Juni on 02/10/2019.
//  Copyright © 2019 Mario Juni. All rights reserved.
//
import Combine
import SwiftUI

struct ActivationView: View {
    @State var textfield1 = ""
    @State var textfield2 = ""
    @State var textfield3 = ""
    @State var textfield4 = ""
    
    @ObservedObject var keyboardHandler: KeyboardFollower
    init(keyboardHandler: KeyboardFollower) {
        self.keyboardHandler = keyboardHandler }
    var body: some View {
        
        VStack(alignment: .center){
            HStack{
                Group{
                    TextField("XXXX", text: $textfield1)
                    TextField("XXXX", text: $textfield2)
                    TextField("XXXX", text: $textfield3)
                    TextField("XXXX", text: $textfield4)
                }
                .bordered()
            }
            HStack{
                Button(action: {
                    print("\(self.textfield1) \(self.textfield2) \(self.textfield3) \(self.textfield4)")
                    
                }) {Text("Activate")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50, alignment: .center)
                }
                    
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 50, alignment: .center)
                    
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)).cornerRadius(5)
                
            }
            .padding(.top, 30)
     
        }
        .padding(.trailing, 20)
        .padding(.leading,20)
        .padding(.bottom, keyboardHandler.keyboardHeight)
                   .onAppear{self.keyboardHandler.subscribe()}
                   .onDisappear{self.keyboardHandler.unsubscribe()}
    }
}



struct  TextFieldViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content.frame(maxHeight: 50)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1).foregroundColor(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)))
            .lineLimit(0)
            .font(Font.system(size: 20, design: .default))
            .multilineTextAlignment(.center)
    }
}

extension View {
    func bordered() -> some View {
        ModifiedContent(
            content: self, modifier: TextFieldViewModifier()
        )
    }
}


struct ActivationView_Previews: PreviewProvider {
    static var previews: some View {
        ActivationView(keyboardHandler: KeyboardFollower())
    }
}
