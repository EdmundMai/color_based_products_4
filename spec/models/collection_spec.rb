require 'spec_helper'

describe Collection do
  its(:attributes) { should include "name" }
  its(:attributes) { should include "short_description" }
  its(:attributes) { should include "long_description" }
  its(:attributes) { should include "active" }
  
  it { should have_many(:collections_products) }
  it { should have_many(:products).through(:collections_products) }
end
