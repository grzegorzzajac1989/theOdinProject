# Use inject to convert an array into a hash

#Solution 1

data_arr = [['dog', 'Fido'], ['cat', 'Whiskers'], ['fish', 'Fluffy']]

data_hash = {}
data_arr.each do |d|
    data_hash[d[0]] = d[1]
end

#Solution 2

data_arr = [['dog', 'Fido'], ['cat', 'Whiskers'], ['fish', 'Fluffy']]

data_hash = data_arr.inject({}) do |hsh, v|
    hsh[v[0]] = v[1]
    hsh
end

# Solution 3

data_arr = [['dog', 'Fido'], ['cat', 'Whiskers'], ['fish', 'Fluffy']]
data_hash = data_arr.inject({}) do |hsh, v|
    hsh.merge({v[0]=>v[1]})
end