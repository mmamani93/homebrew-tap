class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.15/pragmai-macos-arm64.tar.gz"
    sha256 "960732b9acf6a4d260fabddebcf037902266515efb6a3d1b7bbc73488558bf5d"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.15/pragmai-macos-x64.tar.gz"
    sha256 "c8290119ce87c8e24ee1e2835f9ad7dbc872314b6dcd2b1a51903ffdc7c23750"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
