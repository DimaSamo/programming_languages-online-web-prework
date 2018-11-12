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

langs = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
reformat_languages(langs)