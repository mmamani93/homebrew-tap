class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.4/pragmai-macos-arm64.tar.gz"
    sha256 "e5c29d6d53de9e54c4f4394c08ea02f609e5544b6e2f755de130077694e22b5a"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.4/pragmai-macos-x64.tar.gz"
    sha256 "69aff0c9c6eccb2e65d8a38676e8a25048cdf1b42c3df0d8a14df6ec81f12ce6"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
