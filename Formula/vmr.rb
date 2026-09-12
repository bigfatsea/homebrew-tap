# Ver 2026-09-12 23:25, by Stanford

class Vmr < Formula
  desc "Local-first, single-binary LLM router for AI agents (byte-faithful passthrough, failover, flight-recorder audit log)"
  homepage "https://github.com/bigfatsea/vmr"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.0/vmr_darwin_arm64.tar.gz"
      sha256 "cb55a495fec8cb58af05ad7988ce0e42f504714230b8978ae8d95c4e478ea0c0"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.0/vmr_darwin_amd64.tar.gz"
      sha256 "658f10f3b7c09f5c7f8a6f3f6ca66c3bd63e072fb24329b57af046a2ba420d07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.0/vmr_linux_arm64.tar.gz"
      sha256 "45c41c1856794f3fa49679b1df2bb3dee3768d5f064fb87a151061d45c26e080"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.0/vmr_linux_amd64.tar.gz"
      sha256 "fb8ffc89a898ba5ae9979b04b9cc3e89b9d689741446368532145106b5e7eee5"
    end
  end

  def install
    bin.install "vmr"
  end

  test do
    system "#{bin}/vmr", "version"
  end
end
