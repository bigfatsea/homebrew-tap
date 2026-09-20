# Ver 2026-09-20 16:59, by github-actions[bot]

class Vmr < Formula
  desc "Local-first, single-binary LLM router for AI agents (byte-faithful passthrough, failover, flight-recorder audit log)"
  homepage "https://github.com/bigfatsea/vmr"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.1/vmr_darwin_arm64.tar.gz"
      sha256 "22e897bdcdd85897f9b81037afcfb1924b45b9c35780545c049995858c0be89c"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.1/vmr_darwin_amd64.tar.gz"
      sha256 "cf420178dd32ba3d28b663fc44b9dc9246c8eecce3bee29b2561f3409b7d18a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.1/vmr_linux_arm64.tar.gz"
      sha256 "9cf009e001c53b7b113e9e1749d9d4a1349b76603e4de086328eb129348a910a"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.1/vmr_linux_amd64.tar.gz"
      sha256 "7c7624a5de1d2088d45972ae1583429077cdfd9716dd473f09ad25ca9bb99391"
    end
  end

  def install
    bin.install "vmr"
  end

  test do
    system "#{bin}/vmr", "version"
  end
end
