Factory.define :issuer do |i|
  i.sequence( :code ) { |n| "code #{n}" }
  i.sequence( :irs ) { |n| "irs#{n}" }
  i.sequence( :rfc ) { |n| "rfc#{n}" }
  i.sequence( :curp ) { |n| "curp#{n}" }
  i.sequence( :surname ) { |n| "surname #{n}" }
  i.sequence( :mothers_maiden_name ) {|n| "mothers #{n}" }
  i.sequence( :name ) { |n| "name #{n}" }
  i.sequence( :street ) { |n| "street #{n}" }
  i.ext_number 1526
  i.int_number 'A'
  i.sequence( :suburb ) { |n| "colonia #{n}" }
  i.sequence( :location ) { |n| "location #{n}" }
  i.sequence( :reference ) { |n| "reference #{n}" }
  i.sequence( :city ) { |n| "city #{n}" }
  i.sequence( :state ) { |n| "s#{n}" }
  i.sequence( :country ) { |n| "country#{n}" }
  i.postal_code 90210
end

Factory.define :receiver do |r|
  r.sequence( :code ) { |n| "code #{n}" }
  r.sequence( :irs ) { |n| "irs#{n}" }
  r.sequence( :rfc ) { |n| "rfc#{n}" }
  r.sequence( :curp ) { |n| "curp#{n}" }
  r.sequence( :surname ) { |n| "surname #{n}" }
  r.sequence( :mothers_maiden_name ) {|n| "mothers #{n}" }
  r.sequence( :name ) { |n| "name #{n}" }
  r.sequence( :street ) { |n| "street #{n}" }
  r.ext_number 1526
  r.int_number 'B'
  r.sequence( :suburb ) { |n| "colonia #{n}" }
  r.sequence( :location ) { |n| "location #{n}" }
  r.sequence( :reference ) { |n| "reference #{n}" }
  r.sequence( :city ) { |n| "city #{n}" }
  r.sequence( :state ) { |n| "s#{n}" }
  r.sequence( :country ) { |n| "country#{n}" }
  r.postal_code 90210
end