import UIKit


enum StatusCode: Int{
    case success = 200
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
}

func prettyPrint(status:StatusCode) -> String {
    switch status {
    case .success:
        return String(status.rawValue) + ": Success"
    case .unauthorized:
        return String(status.rawValue) + ": Unauthorized"
    case .forbidden:
        return String(status.rawValue) + ": Forbidden"
    case .notFound:
        return String(status.rawValue) + ": Not Found"
    }
}

print(prettyPrint(status:StatusCode.success))
print(prettyPrint(status:StatusCode.unauthorized))
print(prettyPrint(status:StatusCode.forbidden))
print(prettyPrint(status:StatusCode.notFound))
