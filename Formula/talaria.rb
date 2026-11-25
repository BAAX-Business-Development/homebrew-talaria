class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.29.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.29.0/talaria-aarch64-apple-darwin"
      sha256 "ee3f5ed744a178429b9740362cd68b0a77643099f04a57c3a55c9c23b7a2ba00"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.29.0/talaria-x86_64-apple-darwin"
      sha256 "4e05157ebde54d0b35fd9873b7147f8eb181b6011063065c7f974808dd0be1f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.29.0/talaria-aarch64-unknown-linux-musl"
      sha256 "fb2cf610da828bf2b03edf59e7d84ea94799a67bab8b0b534de01f1b61a8c3f9"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.29.0/talaria-x86_64-unknown-linux-musl"
      sha256 "cabb3c05e36abfd3614d521c0527d5209e2fb6953225fc2767b4324cd2e1ae6a"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
