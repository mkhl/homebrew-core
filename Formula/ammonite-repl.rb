class AmmoniteRepl < Formula
  desc "Ammonite is a cleanroom re-implementation of the Scala REPL"
  homepage "https://lihaoyi.github.io/Ammonite/#Ammonite-REPL"
  url "https://github.com/lihaoyi/Ammonite/releases/download/0.6.0/ammonite-repl-0.6.0-2.11.8", :using => :nounzip
  version "0.6.0"
  sha256 "b2e9ee12a4522386a7f149ea5f91569aa1265f70dcf399bfe53bbd38f5abecd1"

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    bin.install "ammonite-repl-0.6.0-2.11.8" => "amm"
  end

  test do
    ENV.java_cache
    assert_equal "hello world!", shell_output("#{bin}/amm -c 'print(\"hello world!\")'")
  end
end
