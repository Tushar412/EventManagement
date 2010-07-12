class AddAboutUsAndContactUsSection < ActiveRecord::Migration
  extend Cms::DataLoader
  def self.up
    create_section(:aboutus, :name => "About Us",  :parent => Section.root.first, :path => "/about-us")
    create_section(:contactus, :name => "Contact Us",  :parent => Section.root.first, :path => "/contact-us")
    Group.all.each{|g| g.sections = Section.all } 
    create_page(:aboutus, :name => "About Us Page", :path => "/about-us", :section => sections(:aboutus), :template_file_name => "aboutus.html.erb", :cacheable => true)
    create_page(:contactus, :name => "Contact Us Page", :path => "/contact-us", :section => sections(:contactus), :template_file_name => "contactus.html.erb", :cacheable => true)
    pages(:aboutus).publish!
    pages(:contactus).publish!
  end
  
  def self.down
  end
end
