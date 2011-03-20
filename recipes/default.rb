#
# Cookbook Name:: dnsimple
# Recipe:: default
#
# Copyright 2010, Heavy Water Software Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

r = gem_package "fog" do
  action :nothing
  not_if "gem list fog --installed --version '>= 0.7.0'"
end
r.run_action( :upgrade )

require 'rubygems'
Gem.clear_paths
