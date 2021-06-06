//
//  ContentView.swift
//  SwitchCase
//
//  Created by Yajat Malhotra on 06/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack{
                Text("SwitchCase")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding([.top, .leading, .trailing])
            Divider()
            CaseView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
