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
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.1/tom-aarch64-apple-darwin.tar.gz"
      sha256 "023ba9448d5accce9f51bfa87f52070883be2e9b79845a6c6e04f9369c0d980c"
    end
    on_intel do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.1/tom-x86_64-apple-darwin.tar.gz"
      sha256 "2e55f7aed7c28fcbb7bd8097afe435f20ab3f07a5a72c10ca2bdba678ae6f616"
    end
  end

  on_linux do
    # Static musl, so one build covers every distribution.
    on_arm do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.1/tom-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a8d361b202e1645c2ef22835b070899281a99471a1ef715cc5086a402ee4b20"
    end
    on_intel do
      url "https://github.com/mindsersit/homebrew-tap/releases/download/cli-v0.1.1/tom-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba5df87c714141a7c0676ae605686d6306f9fdb796f298c38b11887bc42f9fc4"
    end
  end

  def install
    bin.install "tom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tom --version")
  end
end
