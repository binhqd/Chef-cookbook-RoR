node['cloudyus']['gems'].each do |pkg|
  gem_package pkg do
    action :install
  end
end
