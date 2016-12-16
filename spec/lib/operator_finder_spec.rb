require 'spec_helper'

describe OperatorFinder do

	it 'It should not have pay2all api token' do
    expect(OperatorFinder.pay_to_all_api_token).to eq("")
  end
  	
  it 'It should have pay2all api token' do
    expect(OperatorFinder.pay_to_all_api_token).not_to be_nil
  end

  it 'Check for api token configuration if not provided' do
  	config = OperatorFinder.run_action
  	expect(config).to eq("Please provide pay2all api token in config/initializers/operator_finder.rb, Ex: config.pay_to_all_api_token = \\'name\\'")
 	end

 	it 'Check for api token configuration if provided' do
 		OperatorFinder.pay_to_all_api_token = "Please"
  	config = OperatorFinder.run_action
  	expect(config).to eq("Please Update Operator Finder Configuration.")
 	end

 	# it 'Check operator details' do
 	# 	OperatorFinder.pay_to_all_api_token = ""
 	# 	result = OperatorFinder.get_operator_detail("9589112918")
  # 	expect(result).to eq("AIRTEL Madhya Pradesh and Chhattisgarh Telecom Circle.")
 	# end

 	# it 'Check operator details if mobile number length less then 10' do
 	# 	OperatorFinder.pay_to_all_api_token = ""
 	# 	result = OperatorFinder.get_operator_detail("95891")
  # 	expect(result).to eq("Please pass 10 digits mobile number(ex: 8888888888)")
 	# end
end
