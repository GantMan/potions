class HomeScreen < PM::Screen
  stylesheet HomeScreenStylesheet
  WEATHER_URL = "http://openweathermap.org/data/2.1/find/name"

  def on_load
    # Append views with styles
    append(UILabel, :location)
    append(UILabel, :time)
    append(UILabel, :mi)
    append(UIImageView, :line_separator)
    append(UIImageView, :weather_icon)
    append(UILabel, :temperature)
    append(UILabel, :min_max_temp)
    append(UILabel, :description)

    load_info
  end

  def load_info
    # Set time
    find(:time).data = Time.now.strftime("%l:%M")
    find(:mi).data = Time.now.strftime("%p")
    # Set temp
    # app.net.get_json(url, q: "san francisco") do |response|
    #   if response.success?
    #     temp_kelvin = response.object["list"].first["main"]["temp"]

    #   end
    # end
  end

  def k_to_f(kelvin)
    (((temp_kelvin - 273.15) * 1.8000) + 32).to_i
  end
end
