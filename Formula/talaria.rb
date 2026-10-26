class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.22.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.22.0/talaria-aarch64-apple-darwin"
      sha256 "3771758d3b41618278f04d6fedbf6e9fa3d8616c44e350746f4c3642b63e5a4a"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.22.0/talaria-x86_64-apple-darwin"
      sha256 "0b6ae1d240f34c2620a0a7f62ddf5e4533588dabf82f041f9a338efc090cb70c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.22.0/talaria-aarch64-unknown-linux-musl"
      sha256 "b48ec41705dcfbb301cb9e884a5f98a688b3c5db52781878cce4cab860e4cb94"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.22.0/talaria-x86_64-unknown-linux-musl"
      sha256 "f85d8a8eb80fe35ff44ceeec8782a403ff0ebbc1c193c7d0992d0e71dcdbe23a"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
