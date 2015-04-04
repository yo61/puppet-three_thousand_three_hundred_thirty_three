require 'spec_helper'

describe '::three_thousand_three_hundred_thirty_three', :type => :define do
  on_supported_os.each do |os, facts|
    context "on #{os} with puppet v#{Puppet.version}" do
      let(:facts) do facts end
      let :default_params do {} end
      describe "::three_thousand_three_hundred_thirty_three class with no parameters" do
        let :params do default_params end

        it { should compile.with_all_deps }
        it { should contain_class('three_thousand_three_hundred_thirty_three') }
      end
    end
  end
end
