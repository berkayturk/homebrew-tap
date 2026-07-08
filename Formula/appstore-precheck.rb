class AppstorePrecheck < Formula
  desc "Read-only iOS App Store pre-submission scan with a GREEN/YELLOW/RED verdict"
  homepage "https://github.com/berkayturk/appstore-precheck"
  url "https://registry.npmjs.org/appstore-precheck/-/appstore-precheck-1.12.0.tgz"
  sha256 "e3a2f1d230e081831332bf2b1d976acdf5710ef47679d53005553bda3b506b0b"
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
