class AppstorePrecheck < Formula
  desc "Read-only iOS App Store pre-submission scan with a GREEN/YELLOW/RED verdict"
  homepage "https://github.com/berkayturk/appstore-precheck"
  url "https://registry.npmjs.org/appstore-precheck/-/appstore-precheck-1.20.1.tgz"
  sha256 "65271ef30280d09d979444ad0e5c3bf819adcbdd28cf1f2b3020e9a8fae731ea"
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
