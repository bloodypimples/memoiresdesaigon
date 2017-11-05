module ApplicationHelper
  def current_page(path)
    "active" if current_page?(path)
  end

  Now = Time.zone.now
  Tomorrow = 1.day.from_now

  def get_time
    Now.strftime("%I:%M %p")
  end

  def get_arrival_month
    Now.strftime("%B")
  end

  def get_arrival_date
    Now.strftime("%d")
  end

  def get_departure_month
    Tomorrow.strftime("%B")
  end

  def get_departure_date
    Tomorrow.strftime("%d")
  end

  def get_temp
    @weather = Weather.lookup_by_location('HANOI, VIETNAM', Weather::Units::CELSIUS)
    @temp = @weather.condition.temp.to_s + "°C"
  end
end
