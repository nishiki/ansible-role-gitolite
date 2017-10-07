require 'English'

ansible_role = 'gitolite'

def exec_cmd(cmd)
  puts cmd
  puts %x(#{cmd})
  raise unless $CHILD_STATUS.success?
end

task :default do
  exec_cmd(
    "docker run -v $(pwd):/#{ansible_role}:ro -it nishiki/ansible:stretch bash -c " \
    "'cd /#{ansible_role} && rake verify'"
  )
end

task verify: %w[
  install
  purge
]

task :install do
  exec_cmd('ansible-playbook -i tests/inventory tests/gitolite.yml')
  exec_cmd('ansible-playbook -i tests/inventory tests/gitolite.yml | grep changed=0')
  exec_cmd('cd spec && rspec gitolite.rb')
end

task :purge do
  exec_cmd('ansible-playbook -i tests/inventory tests/purge.yml')
  exec_cmd('cd spec && rspec purge.rb')
end
