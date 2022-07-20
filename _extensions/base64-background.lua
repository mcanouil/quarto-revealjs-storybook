return {
  {
    Str = function (elem)
      if elem.text:match("parallaxBackgroundImage: '.+.jpg'") then
        file_name = elem.text:match ("parallaxBackgroundImage: '.+.jpg'")
        file_name = file_name:gsub("parallaxBackgroundImage: '","")
        file_name = file_name:gsub("'","")
        file_name_64 = base64.encode(file_name)
        return "parallaxBackgroundImage: '" .. file_name_64 .. "'"
      else
        return elem
      end
    end,
  }
}
