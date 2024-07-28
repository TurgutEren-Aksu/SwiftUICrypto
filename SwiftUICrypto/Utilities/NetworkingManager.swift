//
//  NetworkingManager.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 25.07.2024.
//

import Foundation
import Combine

class NetworkingManager{

    enum NetworkingManager{
        case badURLResponse
        case unknow
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse: return "Bad reponse from url"
            case .unknow: return "Unkow error occured"
            }
        }
    }
    
    
    static func download(url:URL) -> AnyPublisher<Data,Error>{
       return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({ try handleURLResponse(output: $0)})
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output) throws -> Data{
        guard let response = output.response as? HTTPURLResponse,response.statusCode >= 200 && response.statusCode < 300 else {
            throw URLError(.badServerResponse)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>){
        switch completion {
            case .finished:
                break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
    
}
