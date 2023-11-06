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
    @State var showingBottomSheet: Bool = false
    let viewModel: NominationViewModel = NominationViewModel()
    
    var body: some View {
        
        NavigationStack{
            VStack{
                
                Text("Are you sure?")
                    .textCase(.uppercase)
                    .style(.boldHeadlineMedium)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 20)
                    .padding([.leading, .trailing], 60)
                Text("If you leave this page, you will loose any progress mode.")
                    .style(.body)
                    .padding(.leading, 28)
                    .padding(.bottom, 20)
                
                Spacer()
                
                VStack{
                    
                    //                  Navigate to the home screen
                        NavigationLink {
                            ContentView(networkManager: NetworkManager()).navigationBarBackButtonHidden(true)
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
                    
                    
                    //    diplay current view
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
