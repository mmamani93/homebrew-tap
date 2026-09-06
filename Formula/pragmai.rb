class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.14/pragmai-macos-arm64.tar.gz"
    sha256 "baa44f89e072661ecca6c594ce0e411eecf1aaffccafa03ef7a0700938c7ab20"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.14/pragmai-macos-x64.tar.gz"
    sha256 "1b97112863b2e78c2679ede7fb8624e8dfb3e3f9a52bc16671781a908886ddd2"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
