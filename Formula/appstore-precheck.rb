class AppstorePrecheck < Formula
  desc "Read-only iOS App Store pre-submission scan with a GREEN/YELLOW/RED verdict"
  homepage "https://github.com/berkayturk/appstore-precheck"
  url "https://registry.npmjs.org/appstore-precheck/-/appstore-precheck-1.20.2.tgz"
  sha256 "fe8d151a1f72b2d250d163153748a91aac99d4d850a96cff3ff9c2e6a67874b1"
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
