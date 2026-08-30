class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.8/pragmai-macos-arm64.tar.gz"
    sha256 "f325ed86428e4fed9ce4c80f3cc17057c7916519295b51ee483b6e65b6e67d61"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.8/pragmai-macos-x64.tar.gz"
    sha256 "7c38c44fb05300b2514025c73ef78a14391fa03a6d5041e986f9ea0c63b82fe8"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
