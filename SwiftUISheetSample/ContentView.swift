//
//  ContentView.swift
//  SwiftUISheetSample
//
//  Created by Yoshiyuki Kato on 2022/04/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            ButtonView(presentation: .second)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
