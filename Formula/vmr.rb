# Ver 2026-07-31 17:40, by Sonnet 5

class Vmr < Formula
  desc "Local-first, single-binary LLM router for AI agents (byte-faithful passthrough, failover, flight-recorder audit log)"
  homepage "https://github.com/bigfatsea/vmr"
  version "0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.2/vmr_darwin_arm64.tar.gz"
      sha256 "5fd4d5eafdc1d25d0651b2cb629cdca573bfd96f366c473704a48dcaaf10c3cc"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.2/vmr_darwin_amd64.tar.gz"
      sha256 "b663094fd9faa5384e8bbfdd093f8f249575463a5e82addab4951b6b01d68699"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.2/vmr_linux_arm64.tar.gz"
      sha256 "83d1ced51ef7d64fc171e826dd3727b4d053e0b27ba6aba254676168bf52582f"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.2/vmr_linux_amd64.tar.gz"
      sha256 "f69de661a0aaa7b8e0935cda429731b0fbbcf7ff4e0ba2b8aede81348f690d4d"
    end
  end

  def install
    bin.install "vmr"
  end

  test do
    system "#{bin}/vmr", "version"
  end
end
