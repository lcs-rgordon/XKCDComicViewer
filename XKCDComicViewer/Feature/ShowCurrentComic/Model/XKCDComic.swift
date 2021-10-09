//
//  XKCDComic.swift
//  XKCDComic
//
//  Created by Russell Gordon on 2021-10-07.
//

import Foundation

// Endpoint is:
//
//      https://xkcd.com/info.0.json
//
// Provides details of the current XKCD comic.

// Example response is:
/*
 
 {
    "month":"10",
    "num":2526,
    "link":"",
    "year":"2021",
    "news":"",
    "safe_title":"TSP vs TBSP",
    "transcript":"",
    "alt":"It's like one teraspoon / when all you need is a kilonife",
    "img":"https://imgs.xkcd.com/comics/tsp_vs_tbsp.png",
    "title":"TSP vs TBSP",
    "day":"8"
 }
 
 */

// Define structure to match contents of the response
// NOTE: Property names in structure must exactly match properties in JSON object
struct XKCDComic: Decodable {

    let month: String   // Value in JSON response is in quotes, so String data type must be used
    let num: Int
    let link: String
    let year: String
    let news: String
    let safe_title: String
    let transcript: String
    let alt: String
    let img: String
    let title: String
    let day: String
}


extension XKCDComic {
    
    static let dummyData: [XKCDComic] = [
    
        XKCDComic(month: "10",
                  num: 2526,
                  link: "",
                  year: "2021",
                  news: "",
                  safe_title: "TSP vs TBSP",
                  transcript: "",
                  alt: "It's like one teraspoon / when all you need is a kilonife",
                  img: "https://imgs.xkcd.com/comics/tsp_vs_tbsp.png",
                  title: "TSP vs TBSP",
                  day: "8")

    ]
    
}
