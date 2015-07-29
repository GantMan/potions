class HomeScreenStylesheet < ApplicationStylesheet

  def root_view(st)
    st.background_image = image.resource("sf-bg")
  end

  def beautiful_label(st)
    st.text_alignment = :center
    st.color = color.white
  end

  def location(st)
    beautiful_label(st) # Common styleing via methods
    st.frame = {t: 70, w: screen_width, h: 25, centered: :horizontal}
    st.text = 'San Francisco, CA'
    st.font = font.medium
  end

  def time(st)
    beautiful_label(st) # Common styleing via methods
    st.frame = {t: 140, w: 200, h: 50, centered: :horizontal, padding: {r: 30}}
    st.text = '12:00'
    st.font = font.huge
  end

  def mi(st)
    beautiful_label(st) # Common styleing via methods
    st.frame = {t: 155, l: 160, w: 200, h: 50}
    st.text = 'PM'
  end

  def line_separator(st)
    st.frame = {bp: 50, fl: 20, fr: 20, h: 2}
    st.image = image.resource("line")
    st.alpha = 0.2
  end

  def weather_icon(st)
    st.frame = {bp: 50, w: screen_width, h: 100, centered: :horizontal}
    st.image = image.resource("snow-icon")
    st.content_mode = UIViewContentModeScaleAspectFit
  end

  def temperature(st)
    beautiful_label(st) # Common styleing via methods
    st.frame = {bp: 15, w: screen_width, h: 40, centered: :horizontal}
    st.text = "16°"
    st.font = font.large
  end

  def min_max_temp(st)
    beautiful_label(st) # Common styleing via methods
    st.frame = {bp: 15, w: screen_width, h: 20, centered: :horizontal}
    st.text = "6°     22°"
    st.alpha = 0.8
  end

  def description(st)
    beautiful_label(st) # Common styleing via methods
    st.frame = {bp: 20, w: screen_width, h: 20, centered: :horizontal}
    st.text = "Scattered Snowstorms"
    st.font = font.small
    st.alpha = 0.8
  end

end
