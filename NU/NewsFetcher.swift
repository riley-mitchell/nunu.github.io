//
//  NewsFetcher.swift
//  NU
//
//  Created by Riley Mitchell on 8/21/24.
//

import Foundation

// Define NewsItem struct
struct NewsItem: Identifiable, Codable {
    let id: String
    let title: String
    let description: String?
    let url: String?

    init(title: String, description: String?, url: String?) {
        self.id = UUID().uuidString
        self.title = title
        self.description = description
        self.url = url
    }
}

// Define NewsAPIResponse struct
struct NewsAPIResponse: Codable {
    let articles: [Article]
}

// Define Article struct
struct Article: Codable {
    let title: String
    let description: String?
    let url: String?
}

// Define NewsFetcher class
class NewsFetcher: ObservableObject {
    @Published var newsItems: [NewsItem] = []

    private let apiKey = "eb3d136e26bb4aa7962bed471a839677" // Your actual API key
    private let urlString = "https://newsapi.org/v2/everything?q=feel-good&apiKey="

    func fetchNews() {
        guard let url = URL(string: "\(urlString)\(apiKey)") else {
            print("Invalid URL")
            return
        }

        print("Fetching news from: \(url)") // Debug statement

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching news: \(error)")
                return
            }

            if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 {
                print("Error: HTTP status code \(httpResponse.statusCode)")
                return
            }

            guard let data = data else {
                print("No data returned")
                return
            }

            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(NewsAPIResponse.self, from: data)
                DispatchQueue.main.async {
                    self.newsItems = response.articles.map {
                        NewsItem(title: $0.title, description: $0.description, url: $0.url)
                    }
                    print("News items fetched: \(self.newsItems)") // Debug statement
                }
            } catch {
                print("Error decoding news: \(error)")
            }
        }
        task.resume()
    }
}











