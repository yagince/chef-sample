# -*- coding: utf-8 -*-
#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'deploy' do
  group_name 'deploy'
  gid 999
  action :create
end

node['users'].each{|user|
  create_user user['name'] do
    group user['group'] # グループは先に作成しとかなきゃいけないけど、それはまた今度
  end
}
