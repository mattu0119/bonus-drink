require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe Eratos do
  specify {expect(Eratos.eratos(30)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]}
end
