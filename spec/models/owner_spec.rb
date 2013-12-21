require 'spec_helper'

describe Owner do

  it { should have_valid(:first_name).when('steve', 'ben', 'joe') }
  it { should_not have_valid(:first_name).when('', nil) }

  it { should have_valid(:email).when('this_email@aol.com', 'steve@aol.com') }
  it { should_not have_valid(:email).when(nil, '') }

  it { should have_valid(:last_name).when('danko', 'derda') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_one(:house) }
  it { should have_many(:dogs).through(:house) }


end
