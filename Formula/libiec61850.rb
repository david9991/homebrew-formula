class Libiec61850 < Formula
  version "0.9.2.1"
  desc ""
  homepage ""
  url "http://libiec61850.com/libiec61850/wp-content/uploads/2016/06/libiec61850-0.9.2.1.tgz"
  sha256 ""

  depends_on "cmake" => :build
  depends_on "xz"

  def install
    system "cmake", "-DAPPLE=ON","-DUNIX=ON","-DCONFIG_MMS_THREADLESS_STACK=ON","-DBUILD_EXAMPLES=OFF","-DCMAKE_INSTALL_PREFIX=#{prefix}","."
    system "make"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test libiec61850`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
