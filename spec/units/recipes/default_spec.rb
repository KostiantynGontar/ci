require 'chefspec'
require 'chefspec/berkshelf'

describe 'ci::default' do

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs needed packages' do
    expect(chef_run).to install_package('vim')
    expect(chef_run).to install_package('htop')
    expect(chef_run).to install_package('lsof')
  end

  it 'install Jenkins with oracle-jdk' do 
    expect(chef_run).to include_recipe('java')
    expect(chef_run).to include_recipe('jenkins::master')
    expect(chef_run).to include_recipe('git')
    expect(chef_run).to include_recipe('ant')
  end

end
