class Owner
  def name
    name = 'Brian Sihlongonyane'
  end

  def birthdate
    birthdate = Date.new(1990, 12, 22)
  end

  def countdown
  	Rails.logger.info 'INFO: entering Owner countdown method'
    today = Date.today
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
	if birthday > today
	  countdown = (birthday - today).to_i
	else
	  countdown = (birthday.next_year - today).to_i
	end
  end

end