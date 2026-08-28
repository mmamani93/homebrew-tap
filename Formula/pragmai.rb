class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.7/pragmai-macos-arm64.tar.gz"
    sha256 "8228b0fe79087ea89de4b137019d0df2628f1ed2ac98b22cc31f16e3d9ab193b"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.7/pragmai-macos-x64.tar.gz"
    sha256 "835aa068b77e41c8feb78d4787bba68d4f50b66e210ef03b45a62abc89cbea54"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
