require 'test_helper'

class ReceiverTest < ActiveSupport::TestCase
  def setup
    assert @receiver = Factory.create( :receiver )
  end

  test "code must be present" do
    assert receiver = Factory.build( :receiver, :code => nil)
    assert receiver.invalid?
  end

  test "code must be unique" do
    assert receiver = Factory.build( :receiver, :code => @receiver.code )
    assert receiver.invalid?
  end

  test "rfc must be present" do
    assert receiver = Factory.build( :receiver, :rfc => nil)
    assert receiver.invalid?
  end

  test "rfc must be unique" do
    assert receiver = Factory.build( :receiver, :rfc => @receiver.rfc )
    assert receiver.invalid?
  end

  test "name must be present" do
    assert receiver = Factory.build( :receiver, :name => nil)
    assert receiver.invalid?
  end

  test "name must be unique" do
    assert receiver = Factory.build( :receiver, :name => @receiver.name )
    assert receiver.invalid?
  end
  
  test "irs must be unique" do
    assert receiver = Factory.build( :receiver, :irs => @receiver.irs )
    assert receiver.invalid?
  end
  
  test "can create receivers" do
    assert_difference "Receiver.count" do
      assert Factory.create( :receiver )
    end
  end
  
  test "can update receivers" do
    assert @receiver.name = "new custom name"
    assert @receiver.valid?
    assert @receiver.save
  end
  
  test "can delete receivers" do
    assert_difference "Receiver.count", -1 do
      @receiver.delete
    end
  end
end
