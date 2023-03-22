class Student
  attr_reader :name, :num_cookies
  def initialize(name, num_cookies: 3)
  @name = name
  @num_cookies = num_cookies
  end

  def cookies?
    if @num_cookies > 0
      true
    else
      false
    end
  end

  def add_cookie
    @num_cookies += 1
  end

end