require File.expand_path("../../Abstract/abstract-atoum", __FILE__)

class AtoumAT28 < AbstractAtoum
  url "https://github.com/atoum/atoum/releases/download/2.8.2/atoum.phar"
  sha256 "54bb62753e455a2775de57e138e416d701462c5b67c29b3cfdb473dd26d57162"

  conflicts_with "php71"
end
