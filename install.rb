#!/usr/bin/ruby
require "fileutils"
FD = FileUtils::DryRun

def link_file(name, opt='')
  begin
     FileUtils.ln_s(File.join(dot_files_dir, opt, name), File.join(home_dir, opt, name))
   rescue
     puts "#{name} already exists on the native system. What would you like to do? [overwrite (o) / rename (r) / skip (s)]\n"
     options = gets.chomp
     if options == ('r')
       puts "Please enter a new name:\n"
       new_name = gets.chomp
       FileUtils.ln_s(File.join(@dot_files_dir, opt, name), File.join(@home_dir, opt, new_name))
       puts "Make sure that you update programs which use #{name} appropriately."
     elsif options == ('o')
       puts "overwriting"
       FileUtils.ln_s File.join(@dot_files_dir, opt, name), File.join(@home_dir, opt, name), force:true
     else
       nil
     end
   end
end

@dot_files_dir = FileUtils.pwd
@home_dir = ENV['HOME']

 `ls .config >> configs.txt`

configs = File.readlines("configs.txt")
base = File.readlines("base.txt")
# match_case = /\B\.[a-zA-Z]+/

configs.each do |f|
  f = f.strip
  link_file(f, '.config')
end

base.each do |f|
  f = f.strip
  link_file(f)
end


FileUtils.rm('configs.txt')
