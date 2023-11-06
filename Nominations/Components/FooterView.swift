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
    
    @State var showingBottomSheet: Bool = false
    
    var body: some View {
        HStack{
            //            if one or more field is empty then action sheet is presented
            Button {
                showingBottomSheet.toggle()
                
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
            
            
            //        TODO
            //            This is a Submit Nomination button
            //            it is activated when all other fields are entered by the user
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
                
            }.disabled(true)
            
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
