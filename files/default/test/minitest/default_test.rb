require 'minitest/spec'

describe_recipe 'ci::default' do

  describe "Install packages" do 

    it "install needed packages" do
        package("vim").must_be_installed
        package("htop").must_be_installed
        package("lsof").must_be_installed
      end

    it "install jenkins" do
      package("jenkins").must_be_installed
    end

    it "install ant" do
      package("ant").must_be_installed
    end
  end

  describe "files" do
    
    it "java_home checking" do
     file('/etc/profile.d/jdk.sh').must_include 'export JAVA_HOME=/usr/lib/jvm/java-7-oracle-amd64'
    end
  end

  describe "services" do

    it "Jenkins service" do
      service("jenkins").must_be_running
      service("jenkins").must_be_enabled
    end
  end
end
