class AppstorePrecheck < Formula
  desc "Read-only iOS App Store pre-submission scan with a GREEN/YELLOW/RED verdict"
  homepage "https://github.com/berkayturk/appstore-precheck"
  url "https://registry.npmjs.org/appstore-precheck/-/appstore-precheck-1.12.2.tgz"
  sha256 "378cc5990f322a5c5f44ce09fc6aa80a4a155f216224a056bb6eb717a62d3124"
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
