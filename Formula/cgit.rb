class Cgit < Formula
  desc "A hyperfast web frontend for git repositories written in C."
  homepage "http://git.zx2c4.com/cgit/"
  url "https://git.zx2c4.com/cgit/snapshot/cgit-1.0.tar.xz"

  depends_on "gettext"
  depends_on "openssl"

  def install
    system "make", "get-git"
    system "make", "prefix=#{prefix}",
                   "CGIT_SCRIPT_PATH=#{pkgshare}",
                   "install"
  end
end