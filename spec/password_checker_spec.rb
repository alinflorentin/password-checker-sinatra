
require_relative "../models/password_checker.rb"
require "spec_helper"

describe "PasswordChecker" do
let(:checker) {PasswordChecker.new}
it "returns true if password is longer than 7 characters" do
	expect(checker.check_password("email@email.com","1a!A24567")).to eq(true) 
	end

it "Returns FALSE if the password does not contain at least 1 letter" do
	expect(checker.check_password("email@hotmail.com","1!24567")).to eq(false) 
	end
it "Returns FALSE if the password does not contain at least 1 symbol" do
	expect(checker.check_password("email@hotmail.com","1Aa24567")).to eq(false) 
	end
it "Returns FALSE if the password does not contain at least 1 number" do
	expect(checker.check_password("email@hotmail.com","asAdijisjd!")).to eq(false) 
	end
it "Returns FALSE if the password does not contain at least and 1 lowercase letter" do
	expect(checker.check_password("email@hotmail.com","AAAAAAA2!")).to eq(false) 
	end
it "Returns FALSE if the password does not contain at least and 1 Uppercase letter" do
	expect(checker.check_password("email@hotmail.com","aaaaaaa22!")).to eq(false) 
	end
it "Returns FALSE if the password contains the email name" do
	expect(checker.check_password("email@hotmail.com","email1A!")).to eq(false) 
	end
it "Returns FALSE if the password contains the email domain" do
	expect(checker.check_password("email@hotmail.com","hotmail1A!")).to eq(false) 
	end
end
