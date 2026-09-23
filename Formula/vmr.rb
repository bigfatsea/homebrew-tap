# Ver 2026-09-23 15:58, by github-actions[bot]

class Vmr < Formula
  desc "Local-first, single-binary LLM router for AI agents (byte-faithful passthrough, failover, flight-recorder audit log)"
  homepage "https://github.com/bigfatsea/vmr"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.2/vmr_darwin_arm64.tar.gz"
      sha256 "7da21b82f16e161f090bd7b53ff1419d55c1ea89be86b6dc6f82650c110dc7f7"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.2/vmr_darwin_amd64.tar.gz"
      sha256 "0abea723bd3c80f917427dcdf305d7d1077b55f8e136be4532656670d6f17c10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.2/vmr_linux_arm64.tar.gz"
      sha256 "3da6e7e77040bf5c5f63c486c09786f1d2713ef3769458a2d1ebba628b914ad9"
    else
      url "https://github.com/bigfatsea/vmr/releases/download/v0.7.2/vmr_linux_amd64.tar.gz"
      sha256 "369e833475913c88fd58fb5d7c9deaf4c001f40ce0a29cf25f7bd8b557a5cde6"
    end
  end

  def install
    bin.install "vmr"
  end

  test do
    system "#{bin}/vmr", "version"
  end
end
