# Ignore inline messages which lay outside a diff's range of PR
github.dismiss_out_of_range_messages
# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]" or github.pr_labels.include?("WIP")
# Warn when there is a big PR
message("✅ Good Job! You and your PR size are awesome! (-300 lines) 😎") if git.lines_of_code <300
warn("Big PR (300+ lines)") if git.lines_of_code >= 300 and git.lines_of_code < 500
warn("Large PR (500+ lines)") if git.lines_of_code >= 500 and git.lines_of_code < 700
warn("Huge PR (700+ lines)") if git.lines_of_code >= 700 and git.lines_of_code < 1000
warn("Freakin Huge PR (1k+ lines)") if git.lines_of_code >= 1000
# lint
checkstyle_format.base_path = Dir.pwd
checkstyle_format.report 'James/swiftlint.result.xml'