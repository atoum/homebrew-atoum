class AbstractAtoum < Formula
  desc "The modern, simple and intuitive PHP unit testing framework."
  homepage "http://atoum.org/"

  def phar
    class_name = self.class.name.split("::").last.split("AT").first
    class_name.downcase + ".phar"
  end

  def stub
    class_name = self.class.name.split("::").last.split("AT").first
    class_name.downcase
  end

  def wrapper
    <<-EOS.undent
      #!/usr/bin/env bash
      /usr/bin/env php -d allow_url_fopen=On -d detect_unicode=Off #{libexec}/#{@phar} "$@"
    EOS
  end

  def install
    libexec.install phar
    (libexec/stub).write wrapper
    chmod 0755, (libexec/stub)
    bin.install_symlink (libexec/stub)
  end

  test do
    system phar_bin, "--test-it"
  end
end
