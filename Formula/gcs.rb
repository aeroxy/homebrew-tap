class Gcs < Formula
  desc "Google Cloud Shell from your terminal without the gcloud SDK"
  homepage "https://github.com/aeroxy/google-cloud-shell-cli"
  url "https://github.com/aeroxy/google-cloud-shell-cli/releases/download/0.1.0/gcs-macos-arm64.zip"
  sha256 "0d6a2303720e1400b1820ca9e33720c9096dc7a9c1f0322081e3fb0aa786c3a2"
  license "MIT"

  def install
    bin.install "gcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gcs --version")
  end
end
