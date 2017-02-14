require File.expand_path("../../homebrew-php/Abstract/abstract-php-phar", __FILE__)

class AbstractAtoum < AbstractPhpPhar
  init
  desc "The modern, simple and intuitive PHP unit testing framework."
  homepage "http://atoum.org/"

  def phar_file
    class_name = self.class.name.split("::").last.split("AT").first
    class_name.downcase + ".phar"
  end

  def phar_bin
    class_name = self.class.name.split("::").last.split("AT").first
    class_name.downcase
  end

  test do
    system phar_bin, "--test-it"
  end
end
