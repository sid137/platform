include_recipe "rbenv::default"

include_recipe "rbenv::ruby_build"
rbenv_ruby '2.0.0-p0' do
  global true
end
rbenv_gem 'bundler'
