Factory.define :issuer do |i|
  i.sequence( :code ) { |n| "code #{n}" }
  i.sequence( :rfc ) { |n| "rfc#{n}" }
  i.sequence( :curp ) { |n| "curp#{n}" }
  i.sequence( :surname ) { |n| "surname #{n}" }
  i.sequence( :mothers_maiden_name ) {|n| "mothers #{n}" }
  i.sequence( :name ) { |n| "name #{n}" }
  i.sequence( :street ) { |n| "street #{n}" }
  i.sequence( :ext_number ) { |n| }
  i.sequence( :int_number ) { |n| }
  i.sequence( :colonia ) { |n| "colonia #{n}" }
  i.sequence( :location ) { |n| "location #{n}" }
  i.sequence( :reference ) { |n| "reference #{n}" }
  i.sequence( :city ) { |n| "city #{n}" }
  i.sequence( :state ) { |n| "st#{n}" }
  i.sequence( :country ) { |n| "country#{n}" }
  i.sequence( :postal_code ) { |n| }
end