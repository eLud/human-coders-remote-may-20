//
//  LabeledTextField.swift
//  Comics SwiftUI
//
//  Created by Ludovic Ollagnier on 28/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct LabeledTextField: View {

    var label: String
    @Binding var text: String

    var body: some View {
        HStack {
            Text(label)
            TextField(label, text: $text)
        }
    }
}

struct LabeledTextField_Previews: PreviewProvider {

    @State static var text = ""

    static var previews: some View {
        LabeledTextField(label: "Preview", text: $text)
    }
}
