//
//  BottomSheetView.swift
//  Nominations
//
//  Created by Sandhya on 06/11/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import SwiftUI

struct BottomSheetView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isButtonPressed: Bool = false
    var body: some View {
        
        NavigationStack{
            VStack{
                
                Text("Are you sure?")
                    .textCase(.uppercase)
                    .style(.boldHeadlineMedium)
                    .padding(.leading, 28)
                    .padding(10)
                Text("If you leave this page, you will loose any progress mode.")
                    .style(.body)
                    .padding(.leading, 28)
                    .padding(.bottom, 20)
                
             Spacer()
                  
                VStack{
//                 dismiss the action sheet and navigate to home screen


                   NavigationLink {
                        
                        ContentView()
                        
                    } label: {
                        Text("Yes, leave page")
                            .textCase(.uppercase)
                            .style(.button)
                            .padding(10)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .border(Color.black, width: 2)
                    }
                    .padding(5)
                    
                    
                    //    Back to current view
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                       
                    } label: {
                        Text("Cancel")
                            .textCase(.uppercase)
                            .style(.button)
                            .padding(10)
                            .foregroundColor(.black)
                            .background(.white)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .border(.black, width: 2)
                            .background(.white)
                    }.padding(5)
                

                    
                } .padding(20)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(
                        Color.white
                            .ignoresSafeArea()
                            .shadow(.light)
                    )
                    
            
            }
        }
       
    }
}

#Preview {
    BottomSheetView()
}
