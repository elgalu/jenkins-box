# encoding: utf-8
#
# Author:: Leo Gallucci <elgalu3@gmail.com>
# Cookbook Name:: jenkins_box
# Recipe:: fix-1538
#
# Description: No longer used: fix error chown: cannot access `/var/run/jenkins`: No such file or directory
#              https://issues.jenkins-ci.org/browse/JENKINS-20407
#
# MIT License
#
include_recipe 'jenkins'

# First ensure the jenkins user exists
user node[:jenkins][:server][:user] do
  home node[:jenkins][:server][:home]
end

# Now the fix. Ensure /var/run/jenkins directory exists
directory '/var/run/jenkins' do
  owner node[:jenkins][:server][:user]
  group node[:jenkins][:server][:group]
  mode  node[:jenkins][:server][:dir_permissions]
  action :create
end
