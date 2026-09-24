class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.20/pragmai-macos-arm64.tar.gz"
    sha256 "f0f853ee254eeb0f3a7157c7e55585d8d8249bf73ad09b131ba9cd1e5ea1b3f7"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.20/pragmai-macos-x64.tar.gz"
    sha256 "3703317933158a8ba2261cea8190213a952d8a3c51de54cd3aa2eb312916e022"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
