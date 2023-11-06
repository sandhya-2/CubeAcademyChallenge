//
//  NominationView.swift
//  Nominations
//
//  Created by Sandhya on 04/11/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import SwiftUI

struct NominationView: View {
    
    @State var isDropdownVisible: Bool = false
    @State var selectedOption = "Select Option"   
    
    @State var inputText = ""
    
    //        Instead of the this array the name field from api request is displayed
    var options = ["option 1", "Option 2", "Option 3", "Option 4"]
    var process = ["Very Unfair", "Fair", "Not sure", "Fair", "Very Fair"]
    var icons = ["face.smiling.inverse"]
    
    var body: some View {
        
        VStack{
            HeaderBarView(title: "Create a nomination")
            ScrollView {
                Image("Nomination")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200, alignment: .center)
                    .padding(.bottom, 10)
                
                VStack(alignment: .leading){
                    Text("I'd like to nominate...")
                        .textCase(.uppercase)
                        .style(.boldHeadlineMedium)
                        .padding(.leading, 28)
                    
                    Text("Please select a cube who you feel has done something honourable this month or just all round has a great work ethic.")
                        .style(.body)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .trailing], 28)
                        .padding(.bottom, 10)
                    
                    
                    Group {
                        Text("*").foregroundColor(.accentColor) +
                        Text(" Cube's name").foregroundColor(.black)
                    }.style(.boldHeadlineSmallest)
                        .padding(.leading, 28)
                        .padding(.bottom, 5)
                    
                    //    Dropdown list - this can be moved to separate view and call here
                    
                    VStack{
                        
                        Button {
                            isDropdownVisible.toggle()
                            
                        } label: {
                            HStack{
                                Text(selectedOption)
                                    .style(.body)
                                    .foregroundColor(.black)
                                    .padding(15)
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.pink).padding(15)
                            }.frame(height: 50)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .border(.gray)
                            
                            if isDropdownVisible{

//                               TODO display drop down list items
                              
                            }
                            
                        }
                        .background(.white)
                        
                    }.padding(.leading, 28)
                        .padding(.trailing, 30)
                    
                    Divider().padding(30)
                    
                    Text("I'd like to nominate this cube because...")
                        .textCase(.uppercase)
                        .style(.boldHeadlineMedium)
                        .padding(.leading, 28)
                    
                    Text("Please let us know why you think this cube deserves the 'cube of the month' title \(Image(systemName: "trophy.fill").renderingMode(.original)) \(Image(systemName: "star.fill").renderingMode(.original))")
                        .style(.body)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .trailing], 28)
                        .padding(.bottom, 10)
                    
                    Group {
                        Text("*").foregroundColor(.accentColor) +
                        Text(" Reasoning").foregroundColor(.black)
                    }.style(.boldHeadlineSmallest)
                        .padding(.leading, 28)
                        .padding(.bottom, 5)
                    
                    
                    TextEditor(text: $inputText)
                        .style(.body)
                        .multilineTextAlignment(.leading)
                        .frame(height: 250)
                        .border(.gray)
                        .padding([.leading, .trailing], 28)
                    
                    
                    Divider().padding(30)
                    
                    Group{
                        Text("Is how we currently run ") +
                        Text("cube of the month ").foregroundColor(.accentColor) +
                        Text("fair?")
                    }
                    .textCase(.uppercase)
                    .style(.boldHeadlineMedium)
                    .padding([.leading, .trailing], 28)
                    .padding(.bottom, 10)
                    
                    Text("As you know, out the nominees chosen, we spin a wheel to pick the cube of the month. What's your opinion on this method?")
                        .style(.body)
                        .lineLimit(4)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .trailing], 28)
                        .padding(.bottom, 10)
                    
                    //                    Radio buttons
                    
                    ForEach(process, id: \.self){ opinion in
                        Button {
                            print("radio tapped")
                            
                        } label: {
                            HStack{
                                Text(opinion)
                                    .foregroundColor(.black)
                                    .style(.boldHeadlineSmall)
                                    .padding(.leading, 10)
                                Spacer()
                                Circle().stroke(.gray, lineWidth: 2)
                                    .frame(width: 20, height: 20)
                                    .padding(.horizontal, 25)
                                    
                            }
                        }.frame(width: 380 , alignment: .center)
                            .frame(height: 55)
                            .background(.white)
                            .border(.gray)
                            .padding([.leading, .trailing], 28)
                        
                        
                    }
                    
                    
                    
                }
                
            }
            
            Spacer()
            
            FooterView()
        }
        
        
    }
}

#Preview {
    NominationView()
}

