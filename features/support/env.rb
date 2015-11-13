require 'watir-webdriver'
require 'rspec/expectations'
require 'pry'
require 'os'

browser=nil
url=nil

if OS.windows?
  ENV['PATH'] = File.join(File.dirname(__FILE__), '..', '..', 'tools', 'chromedriver', 'windows') + ';' + ENV['PATH']
elsif OS.mac?
  ENV['PATH'] = File.join(File.dirname(__FILE__), '..', '..', 'tools', 'chromedriver', 'mac') + ':' + ENV['PATH']
elsif OS.linux? && OS.bits == 32
  ENV['PATH'] = File.join(File.dirname(__FILE__), '..', '..', 'tools', 'chromedriver', 'linux_32') + ':' + ENV['PATH']
elsif OS.linux? && OS.bits == 64
  ENV['PATH'] = File.join(File.dirname(__FILE__), '..', '..', 'tools', 'chromedriver', 'linux_64') + ":" + ENV['PATH']
else
  p 'OS not known'
end

#Default to chrome unless specified
ENV['BROWSER'] ||= 'chrome'

if ENV['BROWSER'] == 'chrome'
  browser = Watir::Browser.new :chrome
elsif ENV['BROWSER'] == 'firefox'
  browser = Watir::Browser.new :firefox
end

ENV['URL'] ||='local'

if ENV['URL'] == 'prod'
  url='automationbug.herokuapp.com'
elsif ENV['URL'] == 'local'
  url='localhost:3000'
end

Before do
  @browser = browser
  @url=url
end
 
at_exit do
  browser.close
end