def reformat_languages(languages)
  new_hash={}
  languages.each do |style, langs|
    langs.each do |lang, types|
      types.each do |type, value|
        if !new_hash.has_key?(lang)
          new_hash[lang]={type => value, style: [style]}
        else
          new_hash[lang][:style].push(style)
        end
      end
    end
  end
  new_hash
end
