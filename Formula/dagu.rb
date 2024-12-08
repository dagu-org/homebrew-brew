# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagu < Formula
  desc "A No-code workflow executor that runs DAGs defined in a simple YAML format"
  homepage "https://github.com/dagu-org/dagu"
  version "1.15.0"
  license "GNU General Public License v3.0"

  on_macos do
    on_intel do
      url "https://github.com/dagu-org/dagu/releases/download/v1.15.0/dagu_1.15.0_darwin_amd64.tar.gz"
      sha256 "d7387fdf5c742e88e6f7626fd956c41ddc78d58ccffa689c53bff7d0df89d071"

      def install
        bin.install "dagu"
      end
    end
    on_arm do
      url "https://github.com/dagu-org/dagu/releases/download/v1.15.0/dagu_1.15.0_darwin_arm64.tar.gz"
      sha256 "d0e9d7fcabd4a7c6e681388ac8d0031109e987e28a33e6e94ecc9ac1207ca25e"

      def install
        bin.install "dagu"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dagu-org/dagu/releases/download/v1.15.0/dagu_1.15.0_linux_amd64.tar.gz"
        sha256 "b2cbce915498482ce6eca8176c099ecb545003a01e9cd98aec7694c5d0414d1a"

        def install
          bin.install "dagu"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dagu-org/dagu/releases/download/v1.15.0/dagu_1.15.0_linux_arm64.tar.gz"
        sha256 "5931fb2ba013300bb77b13197649101a6262e1f040148d3dc2255de9b59fcb08"

        def install
          bin.install "dagu"
        end
      end
    end
  end

  service do
    run [opt_bin/"dagu", "start-all"]
    keep_alive true
    error_log_path var/"log/dagu.log"
    log_path var/"log/dagu.log"
    working_dir var
  end
end
