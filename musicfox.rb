# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Musicfox < Formula
  desc "musicfox是一款使用Dart编写的网易云音乐命令行程序。"
  homepage "https://github.com/AlanAlbert/musicfox"
  url "https://github.com/AlanAlbert/musicfox/releases/download/1.2.0/musicfox.mac"
  version "1.2.0"
  sha256 "44f66ea3bdb6c6c2a8d4022c7ac082df01436bdb73bb5a5740324ac3de3a611b"

  depends_on "mpg123"
  depends_on "terminal-notifier"

  def install
    system 'mv musicfox.mac musicfox'
    system 'echo', '-e', "\033[1;33m给个star✨支持一下吧~\033[0m ==> \033[4;36mhttps://github.com/AlanAlbert/musicfox\033[0m"
    bin.install 'musicfox'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test musicfox`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
