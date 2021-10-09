//
//  XKCDViewModel.swift
//  XKCDComic
//
//  Created by Russell Gordon on 2021-10-07.
//

import Foundation

// Define a view model that uses the service to retrieve data from the endpoint
protocol XKCDViewModel: ObservableObject {

    // This function will return details of the current XKCD comic
    func getLatestComic() async
    
}

@MainActor
final class XKCDViewModelImplementation: XKCDViewModel, ObservableObject {
    
    @Published private(set) var comics: [XKCDComic] = []
    
    private let service: XKCDService
    
    init(service: XKCDService) {
        self.service = service
    }
    
    func getLatestComic() async {
        do {
            let newComic = try await service.fetchLatestComic()
            comics.append(newComic)
        } catch {
            print(error)
        }
    }
    
}
