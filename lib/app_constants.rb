class AppConstants
#@@config_path = File.expand_path(File.dirname(__FILE__) + '/../../../../config/constants.yml')
  @@config_path = File.expand_path("config/constants.yml")
  @@environment = Object.const_defined?(:Rails) ? Rails.env : 'test'
  
  def self.config_path=(path)
    @@config_path = path
  end
  
  def self.environment=(environment)
    @@environment = environment
  end  
  
  def self.method_missing(method, *args)
    @@instance.send(method).is_a?(Hash) ? AppConstants.new(@@instance.constants_hash[method.to_s]) : @@instance.send(method)
  end
  
  def method_missing(method, *args)
    constants_hash[method.to_s]
  end
  
  def self.load!
    constants_config = YAML::load(File.open(@@config_path))
    constants_hash = constants_config[@@environment] || {}
    @@instance = AppConstants.new(constants_hash)
  end  
  
  attr_reader :constants_hash
  def initialize(constants_hash)
    @constants_hash = constants_hash
  end
end
