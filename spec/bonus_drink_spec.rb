require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify {expect(BonusDrink.total_count_for(0)).to eq 0}
end

describe BonusDrink do
  specify {expect(BonusDrink.total_count_for(1)).to eq 1}
end

describe BonusDrink do
  specify {expect(BonusDrink.total_count_for(3)).to eq 4}
end

describe BonusDrink do
  specify {expect(BonusDrink.total_count_for(11)).to eq 16}
end

describe BonusDrink do
  specify {expect(BonusDrink.total_count_for(50)).to eq 74}
end

describe BonusDrink do
  specify {expect(BonusDrink.total_count_for(100)).to eq 149}
end