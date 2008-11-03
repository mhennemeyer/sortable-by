require File.dirname(__FILE__) + '/spec_helper'

describe "sortable_by" do
  it "should make the model sortable by eg. price" do
    class Model < ActiveRecord::Base
      attr_accessor :price
      sortable_by :price
    end
    (1..5).map {|i| Model.create(:price => i)}.sort.map(&:price).should eql([1,2,3,4,5])
  end
end