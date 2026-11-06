# Rendered into mindsersit/homebrew-tap by cli-release.yml. The at-delimited placeholders are
# filled from the tag and from the release's own SHA256SUMS, so the formula can't disagree with
# what was published. Edit this file, never the copy in the tap.
class TokensOnMe < Formula
  desc "Start your coding client on an allowance someone gave you"
  homepage "https://tokens-on.me"
  version "0.1.0"
  # Proprietary: the terms are in LICENSE, in each archive.
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.0/tom-aarch64-apple-darwin.tar.gz"
      sha256 "9d7a8cfb2fd7ee7f80216eebd4b17c49b88836431ce3339075c0def39dfd58c4"
    end
    on_intel do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.0/tom-x86_64-apple-darwin.tar.gz"
      sha256 "43d633efc0c495494127ec5c043a85b9bd21c57d0752b0fb4692f1694c4deb1c"
    end
  end

  on_linux do
    # Static musl, so one build covers every distribution.
    on_arm do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.0/tom-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ef8d5f4eb34c199bb16e29f59219712bc0003bea6a0539966788127970926d3"
    end
    on_intel do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.0/tom-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ecea67e1a1163d855963e3684b3aa025bdb692e1e47d65ab074dde3c021e1321"
    end
  end

  def install
    bin.install "tom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tom --version")
  end
end
