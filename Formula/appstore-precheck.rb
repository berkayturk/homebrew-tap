class AppstorePrecheck < Formula
  desc "Read-only iOS App Store pre-submission scan with a GREEN/YELLOW/RED verdict"
  homepage "https://github.com/berkayturk/appstore-precheck"
  url "https://registry.npmjs.org/appstore-precheck/-/appstore-precheck-1.16.0.tgz"
  sha256 "82dc0fed3f98a8aa5e1e2aadf314e43c05286571f7c49fceb069589612c99bdb"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appstore-precheck --version")
    assert_match "GREEN / YELLOW / RED", shell_output("#{bin}/appstore-precheck --help")
  end
end
