module ApplicationHelper
  def current_page(path)
    "active" if current_page?(path)
  end

  def get_time
    $Now = Time.zone.now
    $Now.strftime("%I:%M %p")
  end

  def get_arrival_month
    $Now = Time.zone.now
    $Now.strftime("%B")
  end

  def get_arrival_date
    $Now = Time.zone.now
    $Now.strftime("%d")
  end

  def get_departure_month
    $Tomorrow = 1.day.from_now
    $Tomorrow.strftime("%B")
  end

  def get_departure_date
    $Tomorrow = 1.day.from_now
    $Tomorrow.strftime("%d")
  end

  def get_temp
    @weather = Weather.lookup_by_location('HO CHI MINH CITY, VIETNAM', Weather::Units::CELSIUS)
    @temp = @weather.condition.temp.to_s + "°C"
  end
end
