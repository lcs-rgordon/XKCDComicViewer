//
//  XKCDComicView.swift
//  XKCDComic
//
//  Created by Russell Gordon on 2021-10-07.
//

import SwiftUI

struct XKCDComicView: View {

    let comic: XKCDComic
    
    var body: some View {
        VStack(alignment: .center) {
            Text(comic.title)
        }
       .padding()
       .foregroundColor(.black)

    }
    
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        XKCDComicView(comic: XKCDComic.dummyData.first!)
    }
}
