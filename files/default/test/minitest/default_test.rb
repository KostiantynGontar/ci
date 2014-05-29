require 'minitest/spec'

describe_recipe 'ci::default' do

  describe "Install package Vim" do 
    package("vim").must_be_installed
  end
end
