class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.11/pragmai-macos-arm64.tar.gz"
    sha256 "4a124e86a0410ff631e619cb22ca8a91f8a3f3040956e6f46c2126714576fca6"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.11/pragmai-macos-x64.tar.gz"
    sha256 "643619ba32cc108ffde84c797d98182773c86393b140fb50571f76b61f12dc5f"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
