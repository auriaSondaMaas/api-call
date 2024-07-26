require_relative 'lib/api_call'

# Crear una instancia del APi Call
client = ApiCall.new('https://api.stagingeb.com/v1')

# Hacer la solicitud GET
response = client.get('/properties')

# Mostrar la respuesta
# puts response
response['content'].each do |property|
    puts property['title']
end