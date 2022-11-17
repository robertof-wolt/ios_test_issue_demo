# ios_test_issue_demo

A Flutter project to replicate an issue with `xcodebuild build-for-testing` failing because of
pods not found.

## How to replicate

Run the following commands:

- `flutter build ios integration_test/home_page_test.dart --release --flavor master`
- `cd ios`
- `xcodebuild -workspace Runner.xcworkspace -scheme master -config Flutter/Debug.xcconfig -derivedDataPath ../build/ios_integ -sdk iphoneos build-for-testing`

Tests work fine when run with flutter command: `flutter test integration_test/home_page_test.dart --flavor master`

With xcodebuild command; `xcodebuild -workspace Runner.xcworkspace -scheme master -destination 'platform=iOS Simulator,name=iPhone 14 Pro Max' test` (from ios directory)

And from Xcode (select `master` scheme and then Product > Test)
