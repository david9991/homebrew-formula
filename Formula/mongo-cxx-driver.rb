class MongoCxxDriver < Formula
  version "3.0.1"
  desc ""
  homepage ""
  url "https://github.com/mongodb/mongo-cxx-driver/archive/r3.0.1.tar.gz"
  sha256 ""

  depends_on "mongo-c"
  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "."
    system "make", "install"
  end

  test do
    system "false"
  end
end
