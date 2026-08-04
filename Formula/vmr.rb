# Ver 2026-08-04 11:19, by Gemini 3.6 Flash

class Vmr < Formula
  desc "Local-first, single-binary LLM router for AI agents (byte-faithful passthrough, failover, flight-recorder audit log)"
  homepage "https://github.com/bigfatsea/vmr"
  version "0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.3/vmr_darwin_arm64.tar.gz"
      sha256 "d537f4f37ee63d88df5ef5c94cd74c6a63fefc44178966838c88fbf0f5fc1876"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.3/vmr_darwin_amd64.tar.gz"
      sha256 "b22225350ac20c63384ef19110ffab75e8d476daf6294c1fe5fc3b380f581eb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.3/vmr_linux_arm64.tar.gz"
      sha256 "e08e25d976bb4413a7e83c7f7c0989bc46226eb08807a1376350f92eee02d1aa"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.3/vmr_linux_amd64.tar.gz"
      sha256 "2aff141207b12eca20da0903c3d323579066f6b39eb7c5f01e7530fcdc9024dd"
    end
  end

  def install
    bin.install "vmr"
  end

  test do
    system "#{bin}/vmr", "version"
  end
end
