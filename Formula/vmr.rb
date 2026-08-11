# Ver 2026-08-04 11:19, by Gemini 3.6 Flash

class Vmr < Formula
  desc "Local-first, single-binary LLM router for AI agents (byte-faithful passthrough, failover, flight-recorder audit log)"
  homepage "https://github.com/bigfatsea/vmr"
  version "0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.5/vmr_darwin_arm64.tar.gz"
      sha256 "c5c95a9e3df32e5bab46d5f1f243a25f6bf299d6fd0cabd2d8314c0fd0e21295"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.5/vmr_darwin_amd64.tar.gz"
      sha256 "cd200b53842141b44d484390544fb6586e2c152a9154fd4f39f453259a1e9389"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.5/vmr_linux_arm64.tar.gz"
      sha256 "1d6631cabfa9e11414dc68edc35bb42b1f3764288e12f4028ca1cb82563baeda"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.5/vmr_linux_amd64.tar.gz"
      sha256 "884f5b0d2428e6e8a5236e9cc6073092becb915d4e169a1e27927ce78ac9cd4d"
    end
  end

  def install
    bin.install "vmr"
  end

  test do
    system "#{bin}/vmr", "version"
  end
end
