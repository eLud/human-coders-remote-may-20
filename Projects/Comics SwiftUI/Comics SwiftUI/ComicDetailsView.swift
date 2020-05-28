//
//  ComicDetailsView.swift
//  Comics SwiftUI
//
//  Created by Ludovic Ollagnier on 28/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ComicDetailsView: View {

    let comic: Comic

    var body: some View {
        Text(comic.title)
    }
}

//struct ComicDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ComicDetailsView()
//    }
//}
