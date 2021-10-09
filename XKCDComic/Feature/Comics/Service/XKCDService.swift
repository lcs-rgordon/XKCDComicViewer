//
//  XKCDService.swift
//  XKCDComic
//
//  Created by Russell Gordon on 2021-10-07.
//

// Define a service that goes out and gets the data from the endpoint
protocol XKCDService {
    func fetchLatestComic() async throws -> XKCDComic
}

final class XKCDServiceImplementation: XKCDService {
    
    final func fetchLatestComic() async throws -> XKCDComic {
        
        // Start a URL session to interact with the API
        let urlSession = URLSession.shared
        
        // Assemble the URL that points to the JSON endpoint
        let url = URL(string: APIConstants.baseURL.appending("/info.0.json"))
        
        // Fetch the raw data
        let (data, _) = try await urlSession.data(from: url!)
        
        // Attempt to decode and return the object containing info about the current XKCD comic
        // NOTE: We decode to XKCDComic.self since the endpoint returns not an array of objects, but a single JSON object – this is denoted by the { which marks the start of a JSON object and the } which marks the end of a JSON object
        // FOR MORE BACKGROUND:
        // https://www.w3schools.com/js/js_json_objects.asp
        return try JSONDecoder().decode(XKCDComic.self, from: data)
        
    }
    
}
