require File.expand_path("../../Abstract/abstract-atoum-phar", __FILE__)

class AtoumAT30 < AbstractAtoum
  head "https://github.com/atoum/atoum.git"

  def install
    prefix.install Dir["*"]
  end
end
