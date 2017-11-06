module ApplicationHelper
  def current_page(path)
    "active" if current_page?(path)
  end

  def get_time
    $now = Time.zone.now
    $now.strftime("%I:%M %p")
  end

  def get_arrival_year
    $now = Time.zone.now
    $now.strftime("%Y")
  end

  def get_arrival_month
    $now = Time.zone.now
    $now.strftime("%B")
  end

  def get_arrival_date
    $now = Time.zone.now
    $now.strftime("%d")
  end

  def get_departure_year
    $tomorrow = 1.day.from_now
    $tomorrow.strftime("%Y")
  end

  def get_departure_month
    $tomorrow = 1.day.from_now
    $tomorrow.strftime("%B")
  end

  def get_departure_date
    $tomorrow = 1.day.from_now
    $tomorrow.strftime("%d")
  end

  def get_timestamp_now
    $timestamp = Time.zone.now.to_i * 1000
  end

  def get_timestamp_tomorrow
    $timestamp = 1.day.from_now.to_i * 1000
  end

  def get_temp
    @weather = Weather.lookup_by_location('HO CHI MINH CITY, VIETNAM', Weather::Units::CELSIUS)
    @temp = @weather.condition.temp.to_s + "°C"
  end
end
