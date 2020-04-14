import Danger
import DangerSwiftLint // package: https://github.com/ashfurrow/danger-swiftlint.git

SwiftLint.lint()
let danger = Danger()

enum PRSize: Int {
    case big = 300
    case large = 500
    case huge = 700
    case freakingHuge = 1000
}

let numberOfLines = danger.github.pullRequest.additions + danger.github.pullRequest.deletions
let comment = "Consider spliting it into smaller ones"

switch numberOfLines {
case 300..<500: warn("Big PR (300+ lines). " + comment)
case 500..<700: warn("Large PR (300+ lines) " + comment)
case 700..<1000: warn("Huge PR (300+ lines) + comment")
case 1000..<Int.max  warn("Freaking Huge PR (300+ lines). " + comment)
default: message("✅ Incredible Job! You and your PR size are awesome! (-300 lines) 😎")
}
