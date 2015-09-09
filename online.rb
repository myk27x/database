module Online
  attr_accessor :slack, :git

  def online (slack, git)
    self.slack = slack
    self.git = git
  end
end
