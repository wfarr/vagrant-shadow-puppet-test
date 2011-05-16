class BaseManifest < ShadowPuppet::Manifest
  def example
    package 'build-essential',
      :ensure => :installed
    
    file '/etc/motd',
      :ensure => :present,
      :content => 'Experience Bij!'
  end
  
  recipe :example
end