//
//  ButtonView.swift
//  SwiftUISheetSample
//
//  Created by Yoshiyuki Kato on 2022/04/22.
//

import SwiftUI

extension Identifiable where Self: Hashable {
    typealias ID = Self
    var id: Self { self }
}

struct ButtonView: View {
    @State private var content: Presentation?
    @State var presentation: Presentation? = nil
    
    enum Presentation: View, Hashable, Identifiable {
        case first
        case second
        
        var body: some View {
            switch self {
            case .first: return AnyView(ContentView())
            case .second: return AnyView(SecondView())
            }
        }
    }

    var body: some View {
        VStack() {
            Button(action: {
                self.content = presentation
            }, label: {
                Text("showSecondView")
            })
        }.sheet(item: self.$content) { $0 }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
