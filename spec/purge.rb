require 'serverspec'

set :backend, :exec

describe user('git') do
  it { should_not exist }
end

%w[
  /usr/src/gitolite
  /usr/local/gitolite
  /usr/local/bin/gitolite
  /home/git
].each do |file|
  describe file(file) do
    it { should_not exist }
  end
end
