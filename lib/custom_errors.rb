class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      raise PartnerError
    else
      person.partner = self
  end
end

end

  class PartnerError < StandardError
    def message "must have an instance of the person class passed in!"
    end
  end
end
beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




