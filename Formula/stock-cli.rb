class StockCli < Formula
  desc "Terminal CLI for KOSPI/KOSDAQ and US stock quotes and candle charts"
  homepage "https://github.com/hobeen-kim/stock-cli"
  url "https://github.com/hobeen-kim/stock-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "97755a55350b159f294a16ee27ea6af3e6f2eea3b93de768f47dadd1f8bfcdd3"

  def install
    libexec.install "stock", "tickers.tsv", "stocks_all.tsv", "README.md"
    bin.install_symlink libexec/"stock"
  end

  test do
    assert_match "사용법", shell_output("#{bin}/stock help")
  end
end
