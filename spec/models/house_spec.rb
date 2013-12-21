require 'spec_helper'

describe House do

  it { should have_valid(:name).when('da house', 'joey', 'hey now') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:owner).when(Owner.new) }
  it { should have_valid(:dog).when(Dog.new) }
  
  it { should belong_to(:owner) }
  it { should belong_to(:dog) }

end
