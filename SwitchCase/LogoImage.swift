//
//  LogoImage.swift
//  SwitchCase
//
//  Created by Yajat Malhotra on 06/06/21.
//

import SwiftUI

struct LogoImage: View {
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 32, height: 32, alignment: .center)
            .clipShape(Circle())
        //            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
        //            .shadow(radius: 10)
    }
}

struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage()
    }
}
