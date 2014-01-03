require 'spec_helper'

describe Car do

  it { should validates_presence_of(:color) }

  it { should validates_presence_of(:year) }
  it { should validates_numericality_of(:year), greater_than: 1980 }

  it { should validates_presence_of(:mileage) }
  it { should validates_numericality_of(:mileage)  }
end

