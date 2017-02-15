class AbstractAtoum < Formula
  desc "The modern, simple and intuitive PHP unit testing framework."
  homepage "http://atoum.org/"

  def stub
    self.class.name.split("::").last.split("AT").first.downcase
  end

  test do
    system stub, "--test-it"
  end
end
