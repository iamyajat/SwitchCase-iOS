//
//  CaseView.swift
//  SwitchCase
//
//  Created by Yajat Malhotra on 06/06/21.
//

import SwiftUI

struct CaseView: View {
    @State private var inputText: String = ""
    @State private var upperText: String = "UPPERCASE"
    @State private var lowerText: String = "lowercase"
    @State private var titleText: String = "Title Case"
    var body: some View {
        TabView {
            Text(upperText)
                .font(.subheadline)
                .padding(.bottom)
            Text(lowerText)
                .font(.subheadline)
                .padding(.bottom)
            Text(titleText)
                .font(.subheadline)
                .padding(.bottom)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        TextField("Enter Text!", text: $inputText)
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .onChange(of: inputText, perform: { value in
                if(!inputText.isEmpty) {
                    upperText = inputText.uppercased()
                    lowerText = inputText.lowercased()
                    titleText = inputText.capitalized
                } else {
                    upperText = "UPPERCASE"
                    lowerText = "lowercase"
                    titleText = "Title Case"
                }
            })
    }
}

struct CaseView_Previews: PreviewProvider {
    static var previews: some View {
        CaseView()
    }
}
