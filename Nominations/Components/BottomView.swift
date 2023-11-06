//
//  BottomView.swift
//  Nominations
//
//  Created by Sandhya on 04/11/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import SwiftUI

/// Bottom view is used on the Nomination Submission screen
///
///Back to home button navigates to the home screen
///
///Create nomination navigates to the create nomination screen
///
///
struct BottomView: View {
    
    var body: some View {
        VStack{
            
            //            Create nomination button
            NavigationLink {
                NominationView().navigationBarBackButtonHidden(true)
            } label: {
                Text("Create New Nomination")
                    .textCase(.uppercase)
                    .style(.button)
                    .padding()
                    .foregroundColor(.white)
                    .background(.black)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(.black)
            }
            .padding(2)
            
            //    Back to home button
            NavigationLink {
                ContentView().navigationBarBackButtonHidden(true)
            } label: {
                Text("Back to home")
                    .textCase(.uppercase)
                    .style(.button)
                    .padding()
                    .foregroundColor(.black)
                    .background(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .border(.black, width: 2)
                    .background(.white)
            }
            
            
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .center)
        .background(
            Color.white
                .ignoresSafeArea()
                .shadow(.light)
        )
        
    }
}

#Preview {
    BottomView()
}
