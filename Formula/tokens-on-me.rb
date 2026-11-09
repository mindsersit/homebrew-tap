# Rendered into mindsersit/homebrew-tap by cli-release.yml. The at-delimited placeholders are
# filled from the tag and from the release's own SHA256SUMS, so the formula can't disagree with
# what was published. Edit this file, never the copy in the tap.
class TokensOnMe < Formula
  desc "Start your coding client on an allowance someone gave you"
  homepage "https://tokens-on.me"
  # No `version`: Homebrew reads it from the URLs' `cli-v…`, and `audit --strict` calls the line
  # redundant. Proprietary: the terms are in LICENSE, in each archive.
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.2/tom-aarch64-apple-darwin.tar.gz"
      sha256 "55d762e1037fe607268cfe5550541d3e58c9cf03652254a392c0b6513f7ed25a"
    end
    on_intel do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.2/tom-x86_64-apple-darwin.tar.gz"
      sha256 "e2ab871c8a599775ec7b484f0ef3bb583341ee03d255e5000d3e04674f7d1b35"
    end
  end

  on_linux do
    # Static musl, so one build covers every distribution.
    on_arm do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.2/tom-aarch64-unknown-linux-musl.tar.gz"
      sha256 "734794bd134dd0d2908b3d18107737e81b038d33c3ad54dbdea109a51a3316fe"
    end
    on_intel do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.2/tom-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e45d5c179a869f38f934b870e4e40faadd0652d1e8b54dc5e42fa16349ddc6af"
    end
  end

  def install
    bin.install "tom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tom --version")
  end
end
