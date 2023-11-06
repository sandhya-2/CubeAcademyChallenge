//
//  CreateNominationView.swift
//  Nominations
//
//  Created by Sandhya on 04/11/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import SwiftUI

/// Create Nomination button view used on the nominations screen.
struct CreateNominationView: View {
    
    var body: some View {
        
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
        }.padding(20)
            .background(
                Color.white
                    .ignoresSafeArea()
                    .shadow(.light)
            )
    }
    
}

#Preview {
    CreateNominationView()
}
