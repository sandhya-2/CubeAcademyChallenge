//
//  FooterView.swift
//  Nominations
//
//  Created by Sandhya on 04/11/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import SwiftUI

/// Back button and Submit button are used on the create nomination screen

struct FooterView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showingBottomSheet: Bool = false
    
    var body: some View {
        HStack{
            
            Button {
                showingBottomSheet.toggle()
//                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Back")
                    .textCase(.uppercase)
                    .style(.button)
                    .padding()
                    .foregroundColor(.black)
                    .background(.white)
                    .frame(width: 100, alignment: .center)
                    .border(.black, width: 2)
            }
            .padding(2)
            .sheet(isPresented: $showingBottomSheet)  {
                BottomSheetView().presentationDetents([.medium, .large])
            }
            
            
        
//            This is a Submit Nomination button
//            it is activated when all other fields are filled by user input
            NavigationLink {
                NominationSubmitView().navigationBarBackButtonHidden(true)
            } label: {
                Text("Submit nomination")
                    .textCase(.uppercase)
                    .style(.button)
                    .padding()
                    .foregroundColor(.white)
                    .background(.gray)
                    .frame(width: 230, alignment: .center)
                    .background(.gray)

            }
            
        }.padding(20)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(
                Color.white
                    .ignoresSafeArea()
                    .shadow(.light)
            )
    }
}


#Preview {
    FooterView()
}
