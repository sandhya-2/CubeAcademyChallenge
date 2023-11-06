//
//  ContentView.swift
//  Nominations
//
//  Created by Sam Davis on 20/10/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0) {
            HeaderBarView()
            NavigationStack{
                ScrollView {
                    NominationsHeaderView()
                }
                CreateNominationView()
            }        }
        .background(.cubeLightGrey)
        
    }
}

#Preview {
    ContentView()
}
