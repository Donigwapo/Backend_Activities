def exclude_vowels(input_text)
    processed_text = []
  
    vowels_to_exclude = %w[a e i o u A E I O U]
  
    input_text.each_char do |character|
      processed_text << character unless vowels_to_exclude.include?(character)
    end
  
    puts processed_text.join
  end
  
  exclude_vowels("Open minded ka ba?")