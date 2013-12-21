require 'spec_helper'

describe Dog do
  it { should have_valid(:name).when('steve', 'ben', 'joe') }
  it { should_not have_valid(:name).when('', nil) }


  it { should have_one(:house) }
  it { should have_many(:owners).through(:house) }

end
