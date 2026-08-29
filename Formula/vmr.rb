# Ver 2026-08-29 17:27, by gemini-3.7-flash

class Vmr < Formula
  desc "Local-first, single-binary LLM router for AI agents (byte-faithful passthrough, failover, flight-recorder audit log)"
  homepage "https://github.com/bigfatsea/vmr"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.6.3/vmr_darwin_arm64.tar.gz"
      sha256 "e93a218f3063157137b882fc8eacce1aa7ec5ba5a2058948d948d846a9d93a27"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.6.3/vmr_darwin_amd64.tar.gz"
      sha256 "1e733aed287e4d01278a8e98d5ca01693f8da35076cd75c2de32e46a32b52b63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.6.3/vmr_linux_arm64.tar.gz"
      sha256 "0c6593cc425b0d81c0b7f6e09dc0938edee9ab4a5f5623e947f911a202eda8cf"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.6.3/vmr_linux_amd64.tar.gz"
      sha256 "ea50e4ed8c2f9436812916089211f6d134e65bbb423ccc944f8801cecdf2dbee"
    end
  end

  def install
    bin.install "vmr"
  end

  test do
    system "#{bin}/vmr", "version"
  end
end
