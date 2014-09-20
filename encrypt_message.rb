class EncryptMessage

  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}  
  end

  def encrypt_letter(letter)
    downcase_letter = letter.downcase
    cipher[downcase_letter]
  end

  def encrypt(letters)
    letter_split = letters.split('')
    result = []

    letter_split.each do |l|
      encrypted = encrypt_letter(l)
      result.push(encrypted)
    end
    result.join('')
  end

  def decrypt(letters)
    encrypt(letters)
  end
end

new_message = EncryptMessage.new

puts "Enter a string to be encrypted"
print "> "
get_message = gets.chomp

puts new_message.encrypt(get_message)
puts

puts "Enter a string to be decrypted"
print "> "
decrypt_message = gets.chomp
puts new_message.decrypt(decrypt_message)