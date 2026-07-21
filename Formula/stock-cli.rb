class StockCli < Formula
  desc "Terminal CLI for KOSPI/KOSDAQ and US stock quotes and candle charts"
  homepage "https://github.com/hobeen-kim/stock-cli"
  url "https://github.com/hobeen-kim/stock-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d5e9b0ed1494822173426fc0ef40d0690de7375ebe8f491093c4d998529ec74b"

  def install
    libexec.install "stock", "tickers.tsv", "stocks_all.tsv", "README.md"
    bin.install_symlink libexec/"stock"
  end

  test do
    assert_match "사용법", shell_output("#{bin}/stock help")
  end
end
