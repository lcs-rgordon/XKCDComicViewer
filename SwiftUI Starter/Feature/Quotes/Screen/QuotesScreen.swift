//
//  QuotesScreen.swift
//  SwiftUI Starter
//
//  Created by Russell Gordon on 2021-10-07.
//

import SwiftUI

struct QuotesScreen: View {
    var body: some View {
        
        List {
            
            // Display the list of quotes
            ForEach(Quote.dummyData, id: \.anime) { item in
                
                QuoteView(item: item)
                
            }
            
        }
        
    }
    
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
