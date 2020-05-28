//
//  BackgroundedText.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 28/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct BackgroundedText: View {

    let text: String
    let color: Color
    let cornerRadius: CGFloat

    var body: some View {
        Text(text)
            .padding()
            .background(color)
            .cornerRadius(cornerRadius)
    }
}

struct BackgroundedText_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundedText(text: "Preview", color: .red, cornerRadius: 14)
    }
}
