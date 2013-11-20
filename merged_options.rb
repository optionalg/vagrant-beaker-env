# Copy this file to local_options.rb and adjust as needed if you wish to run
# with some local overrides.
{:type=>"git",
 :debug=>true,
 :color=>false,
 :root_keys=>false,
 :provision => true,
 :ssh=>{:keys=>["./keys/beaker"]},
 :xml=>true,
 :install=>
  [
   "file:///vagrant/facter#stable",
   "file:///vagrant/hiera#stable",
   "file:///vagrant/puppet#HEAD",
  ],
#  [
#   "git://github.com/puppetlabs/facter.git#stable",
#   "git://github.com/puppetlabs/hiera.git#stable",
#   "git://github.com/jpartlow/puppet#feature/7243/csr-attributes-test",
#  ],
 :pre_suite=>["setup/git/pre-suite"],
 :ntp=>true,
 :preserve_hosts=>true}
