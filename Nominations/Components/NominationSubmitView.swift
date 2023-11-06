//
//  NominationSubmitView.swift
//  Nominations
//
//  Created by Sandhya on 04/11/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import SwiftUI

/// Nomination Submitted view is displayed after the submit button is clicked
///
struct NominationSubmitView: View {
    var body: some View {
        VStack{
            HeaderBarView(title: "Nomination Submitted")
            Image("Submission")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200, alignment: .center)
                    .padding(.bottom, 20)
            
            Text("Nomination submitted")
                .textCase(.uppercase)
                .style(.boldHeadlineLarge)
                .multilineTextAlignment(.center).padding(20)
            
            Text("Thank you for taking the time to fill out this form! Why not nominate another cube?")
                .padding(20)
                .lineLimit(3)
                .style(.body)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            BottomView()
        }
       
    }
}

#Preview {
    NominationSubmitView()
}
