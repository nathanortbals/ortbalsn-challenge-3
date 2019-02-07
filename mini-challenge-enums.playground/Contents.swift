import UIKit


enum StatusCode{
    case success
    case unauthorized
    case forbidden
    case notFound
}

func prettyPrint(status:StatusCode) -> String {
    switch status{
    case .success:
        return "Success"
    case .unauthorized:
        return "Unauthorized"
    case .forbidden:
        return "Forbidden"
    case .notFound:
        return "Not Found"
    }
}

print(prettyPrint(status:StatusCode.success))
print(prettyPrint(status:StatusCode.unauthorized))
print(prettyPrint(status:StatusCode.forbidden))
print(prettyPrint(status:StatusCode.notFound))
