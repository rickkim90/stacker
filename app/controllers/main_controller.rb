class MainController < ApplicationController
  # load_and_authorize_resource

  def index
    require 'nokogiri'
    require 'json'
    require 'awesome_print'

    @stacks = Stack.all
    @stack_fields = StackField.all


    arr = Array.new
    File.open("gitdata.json", "r").each_line do |row|
      arr << JSON.parse(row)
    end
    @name = []
    @star = []
    arr[0..10].each do |a|
      @name << a["name"]
      @star << a["count"]
    end
  end

  def mypage
    @stacks = Stack.all
    @stack_fields = StackField.all
  end

  def mypage_add_stack
  end



end
