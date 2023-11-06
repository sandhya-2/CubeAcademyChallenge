//
//  ContentView.swift
//  Nominations
//
//  Created by Sam Davis on 20/10/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let networkManager: NetworkManager
    
    var body: some View {
        
        VStack(spacing: 0) {
            HeaderBarView()
            
            NavigationStack{
                ScrollView {

                   
                    
                    NominationsHeaderView()
                }
                //                    this is to test api data
                Button("Make Api call"){
                    networkManager.GetAllNominees()
                }
                CreateNominationView()
            }        }
        .background(.cubeLightGrey)
        
    }
}

#Preview {
    ContentView(networkManager: NetworkManager())
}
