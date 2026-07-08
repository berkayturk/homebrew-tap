# berkayturk/homebrew-tap

Homebrew formulae for [Berkay Turk](https://github.com/berkayturk)'s tools.

## Install

```bash
brew tap berkayturk/tap
brew install appstore-precheck
```

## Formulae

| Formula | Description |
|---------|-------------|
| [`appstore-precheck`](Formula/appstore-precheck.rb) | Read-only iOS App Store pre-submission scan with a GREEN/YELLOW/RED verdict — [repo](https://github.com/berkayturk/appstore-precheck) |

## Usage

```bash
cd your-ios-app
appstore-precheck                    # scan the current directory
appstore-precheck --fail-on YELLOW   # stricter gate
appstore-precheck --format sarif     # SARIF for code-scanning tooling
```

## Updating a formula

Bump `url` to the new npm tarball version and refresh `sha256`:

```bash
curl -sL https://registry.npmjs.org/appstore-precheck/-/appstore-precheck-<VERSION>.tgz | shasum -a 256
```
