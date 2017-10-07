require 'serverspec'

set :backend, :exec

describe package('git') do
  it { should be_installed }
end

describe user('git') do
  it { should exist }
  it { should have_uid 997 }
  it { should have_home_directory '/home/git' }
  it { should have_login_shell '/bin/bash' }
end

describe command('su - git -c "gitolite list-users"') do
  its(:stdout) { should contain 'gitolite' }
  its(:stdout) { should contain '@all' }
  its(:exit_status) { should eq 0 }
end

describe command('su - git -c "gitolite list-repos"') do
  its(:stdout) { should contain 'testing' }
  its(:stdout) { should contain 'gitolite-admin' }
  its(:exit_status) { should eq 0 }
end
