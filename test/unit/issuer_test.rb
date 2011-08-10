require 'test_helper'

class IssuerTest < ActiveSupport::TestCase
  def setup
    assert @issuer = Factory.create( :issuer )
  end

  test "code must be present" do
    assert issuer = Factory.build( :issuer, :code => nil)
    assert issuer.invalid?
  end

  test "code must be unique" do
    assert issuer = Factory.build( :issuer, :code => @issuer.code )
    assert issuer.invalid?
  end

  test "rfc must be present" do
    assert issuer = Factory.build( :issuer, :rfc => nil)
    assert issuer.invalid?
  end

  test "rfc must be unique" do
    assert issuer = Factory.build( :issuer, :rfc => @issuer.rfc )
    assert issuer.invalid?
  end

  test "name must be present" do
    assert issuer = Factory.build( :issuer, :name => nil)
    assert issuer.invalid?
  end

  test "name must be unique" do
    assert issuer = Factory.build( :issuer, :name => @issuer.name )
    assert issuer.invalid?
  end
  
  test "irs must be unique" do
    assert issuer = Factory.build( :issuer, :irs => @issuer.irs )
    assert issuer.invalid?
  end
  
  test "can create issuers" do
    assert_difference "Issuer.count" do
      assert Factory.create( :issuer )
    end
  end
  
  test "can update issuers" do
    assert @issuer.name = "new custom name"
    assert @issuer.valid?
    assert @issuer.save
  end
  
  test "can delete issuers" do
    assert_difference "Issuer.count", -1 do
      @issuer.delete
    end
  end
end