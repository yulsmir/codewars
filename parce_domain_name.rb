
def domain_name(url)
  value = ''
  link = url.split('//').shift(2)

  if url.start_with?('http:') || url.start_with?('https')
    value = link[1]
  else
    value = link[0]
  end
  
  if value.start_with?('www')
    new = value.split('.')
    new[1]
  else
    new = value.split('/')
    res = new[0].split('.')
    res[0]
  end
end


url1 = "http://github.com/carbonfive/raygun" #-> domain name = "github"
url2 = "http://www.zombie-bites.com"         #-> domain name = "zombie-bites"
url3 = "https://www.cnet.com"

puts domain_name(url1)
puts('=======')
puts domain_name(url2)
puts('=======')

puts domain_name(url3)
puts('=======')
