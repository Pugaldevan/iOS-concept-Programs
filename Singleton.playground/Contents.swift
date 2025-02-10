import UIKit

// Web service class for Unit testing
// Using dependency injection

protocol NetworkServices{
    func fetchData(completion: @escaping(Result<Data, Error>) -> Void)
}

class WebService{
    
    let networkService: NetworkServices
    init(networkService: NetworkServices) {
        self.networkService = networkService
    }
    
    func makeApiCall(completion: @escaping(Result<Data, Error>) -> Void){
        self.networkService.fetchData(completion: completion)
    }
}
