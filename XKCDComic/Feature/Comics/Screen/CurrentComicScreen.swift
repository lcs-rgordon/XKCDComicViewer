//
//  CurrentComicScreen.swift
//  XKCDComic
//
//  Created by Russell Gordon on 2021-10-07.
//

import SwiftUI

struct CurrentComicScreen: View {
    
    // Source of truth for the view model – initial instance
    @StateObject private var vm = XKCDViewModelImplementation(
        service: XKCDServiceImplementation()
    )

    var body: some View {
        VStack(alignment: .center) {
            if vm.comics.isEmpty {
                ProgressView()
            } else {
                Text(vm.comics.last!.title)
            }
        }
        .padding()
        .task {
            // Wait for the currentComic to be retrieved from the API
            await vm.getLatestComic()
        }
    }
    
}

struct CurrentComicScreen_Previews: PreviewProvider {
    static var previews: some View {
        CurrentComicScreen()
    }
}
