class StockCli < Formula
  desc "Terminal CLI for KOSPI/KOSDAQ and US stock quotes and candle charts"
  homepage "https://github.com/hobeen-kim/stock-cli"
  url "https://github.com/hobeen-kim/stock-cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "c417efd14507aa03090cc24add7d30c6b6f1f947b326bcb1481242cb3164ac76"

  def install
    libexec.install "stock", "tickers.tsv", "stocks_all.tsv", "README.md"
    bin.install_symlink libexec/"stock"
  end

  test do
    assert_match "사용법", shell_output("#{bin}/stock help")
  end
end
