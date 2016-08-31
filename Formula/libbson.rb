class Libbson < Formula
  version "1.3.5"
  desc ""
  homepage ""
  url "https://github.com/mongodb/libbson/archive/1.3.5.tar.gz"
  sha256 ""

  depends_on "cmake" => :build
  depends_on "xz"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "."
    system "make", "install"
  end

  test do
    system "false"
  end
end
