# encoding: utf-8
require 'spec_helper'

ActiveRecord::Migration.create_table :example_models do |t|
  t.string :auth_token
end
ActiveRecord::Migrator.up "db/migrate"

class ExampleModel < ActiveRecord::Base
  has_token_field :auth_token
end

describe HasTokenField do

  it 'adds make_token class method to active_record model' do
    ExampleModel.methods.include?(:make_token).should == true
  end

  it 'adds ensure_auth_token to instance of ar model' do
    ExampleModel.new.respond_to?(:ensure_auth_token).should == true
  end

  it 'saves token to database' do
    model = ExampleModel.create!
    model.auth_token.present?.should == true
  end

end