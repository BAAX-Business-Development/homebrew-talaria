class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.25.1"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.25.1/talaria-aarch64-apple-darwin"
      sha256 "17177e979185f1630ca728ee8ba2b55fdc191cf534ce1a0d0c84ca360056e8a2"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.25.1/talaria-x86_64-apple-darwin"
      sha256 "869af090032b3bdb5b69cecaca49f8b455e9debac0984ad4e763a24fa7285dbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.25.1/talaria-aarch64-unknown-linux-musl"
      sha256 "c125de645b20000382b2091ae664b429c05489cd27412c8e6d8999aa81b4b377"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.25.1/talaria-x86_64-unknown-linux-musl"
      sha256 "0c7be3e4eba1e889199faaf92311c603031aed88fa2511c94104cc70979e4351"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
