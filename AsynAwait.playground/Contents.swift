import UIKit

// Async await sample code

class APIManager {
    
    func fetchData() async throws -> String {
        try await Task.sleep(nanoseconds: 2_000_000_000)
        return "data fetched successfully"
    }
}

class DataBinding {
    var apiManager = APIManager()
    
    func callMainMethod() {
        // Call async function in a Task to avoid blocking
        Task {
            await fetchAndDisplayData()
        }
    }
    
    func fetchAndDisplayData() async {
        do{
            let result = try await apiManager.fetchData()
            print("Result: \(result)")
        }
        catch {
            print("Failed to fetch the data")
        }
    }
      
}
