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
    $timestamp = Date.today.to_time.to_i * 1000
  end

  def get_timestamp_tomorrow
    $timestamp = 1.day.from_now.to_i * 1000
  end

  def get_temp
    @weather = Weather.lookup_by_location('HO CHI MINH CITY, VIETNAM', Weather::Units::CELSIUS)
    @temp = @weather.condition.temp.to_s + "°C"
  end

  def get_event_date(event)
    $date_object = Time.parse(event.date)
    $date_object.strftime("%d")
  end

  def get_event_month(event)
    $date_object = Time.parse(event.date)
    $date_object.strftime("%B")
  end

  def get_event_date_with_suffix(event)
    $date_object = Time.parse(event.date)
    $date_object.day.ordinalize
  end

  def gravatar_for(email, options: {size: 100})
    gravatar_id = Digest::MD5::hexdigest(email)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=mm"
    image_tag(gravatar_url, class: "gravatar")
  end

  def get_articles
    @articles = Article.last(4)
  end

  def to_date(timestamp)
    $date_object = Time.at(timestamp.to_i / 1000)
    $date_object.strftime("%d")
  end

  def to_month(timestamp)
    $date_object = Time.at(timestamp.to_i / 1000)
    $date_object.strftime("%B")
  end

  def get_room_name(room)
    @room = Room.find(room[:room_id])
    @room.name
  end

  def get_room_amount(room)
    room[:amount]
  end

  def get_total_amount(arrival, departure, rooms)
    @total_days = (departure.to_i - arrival.to_i) / 86400000

    @total_amount = 0

    rooms.each do |room|
      @room = Room.find(room[:room_id])
      @amount = room[:amount].to_i
      @total_amount = @total_amount + ((@room.rate * @total_days) * @amount)
    end

    @total_amount
  end

  def get_reserved_rooms(rooms)
    @string = ''

    rooms.each do |room|
      @room = Room.find(room[:room_id])

      @string = @string + @room.name + " x#{room[:amount]}. "
    end

    @string
  end

  def get_comment_time(comment)
    comment.created_at.strftime("%b %e'%Y")
  end
end
