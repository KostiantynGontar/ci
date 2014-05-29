require 'chefspec'
require 'chefspec/berkshelf'

describe 'ci::default' do

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs vim' do
    expect(chef_run).to install_package('vim')
  end

  it 'install java' do 
    expect(chef_run).to include_recipe('java')
  end

  it 'install Jenkins' do 
    expect(chef_run).to include_recipe('jenkins::master')
  end
end
