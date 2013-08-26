define :create_user, :group => 'admin' do
  user params[:name] do
    comment "#{params[:name]} user"
    group params[:group]
    home "/home/#{params[:name]}"
    shell '/bin/bash'
    supports :manage_home => true
    action :create
  end

  directory "/home/#{params[:name]}/.ssh/" do
    owner params[:name]
    group params[:group]
    mode 0755
  end

  file "/home/#{params[:name]}/.ssh/authorized_keys" do
    owner params[:name]
    mode 0600
    content File.read(File.expand_path("../../templates/default/#{params[:name]}.authorized_keys", __FILE__))
  end
end
