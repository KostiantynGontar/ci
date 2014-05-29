require 'chefspec'
require 'chefspec/berkshelf'

describe 'ci::default' do

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'install Jenkins with java' do 
    expect(chef_run).to include_recipe('java')
    expect(chef_run).to include_recipe('jenkins::master')
  end

  it 'installs vim' do
    expect(chef_run).to install_package('vim')
  end

end
