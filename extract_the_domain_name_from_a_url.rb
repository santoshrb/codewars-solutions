# Extract the domain name from a URL
#
# Write a function that when given a URL as a string, parses out just the domain name
# and returns it as a string.
#
# For example:
#
# domain_name("http://github.com/carbonfive/raygun") == "github"
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"

# Solution:

require 'spec_helper'
require 'byebug'

def domain_name(url)
 url.split(/https|http|www|:\/\/|\./).reject(&:empty?)[0]
end


# Sample Tests:

describe("Extract the domain name from a URL") do
  it 'basis tests' do
    expect(domain_name("http://google.com")).to eq("google")
    expect(domain_name("http://google.co.jp")).to eq("google")
    expect(domain_name("www.xakep.ru")).to eq("xakep")
    expect(domain_name("https://youtube.com")).to eq("youtube")
  end
end
