#!/usr/bin/env ruby
# vi: set ft=ruby :

site :opscode # Still using this deprecated site location until vagrant is upgraded
# with the usage of:
# source "https://api.berkshelf.com"

# Accessory recipes
cookbook 'apt',     '>= 2.3'
cookbook 'java',    '>= 1.15.4'
cookbook 'build-essential', '>= 1.4.2'
cookbook 'dmg',     github: 'thomasmeeus/dmg', ref: '03cf303258' # To temporary fix https://tickets.opscode.com/browse/COOK-3946
cookbook 'git',     '>= 2.7'
cookbook 'curl',    '>= 1.1'
cookbook 'runit',   '>= 1.4'
cookbook 'ark',     '>= 0.4.0'
cookbook 'vim'
cookbook 'apache2', '>= 1.8.4'
cookbook 'nginx',   '>= 2.0.4'

# Intended recipes
cookbook 'jenkins', github: 'elgalu/jenkins-cookbooks', branch: :cli_timeout # To fix https://github.com/opscode-cookbooks/jenkins/pull/110
cookbook 'rvm',     github: 'elgalu/chef-rvm', branch: :gawk # To fix https://github.com/fnichol/chef-rvm/pull/213

# TODO: To achieve as close as possible TravisCI environment, i may need to check these:
#   https://github.com/travis-ci/travis-cookbooks/tree/master/ci_environment
#   http://about.travis-ci.org/fr/docs/user/ci-environment/
# More recipes to consider:
#   https://github.com/michaelklishin/sous-chef/blob/master/Vagrantfile.sample

metadata  # Also use metadata.rb for local recipes
