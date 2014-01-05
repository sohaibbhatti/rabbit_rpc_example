class UserService
  class << self

    def create(id, name)
      {
        ok: true,
        id: id,
        name: name
      }
    end

    def read
      {
        ok: true,
        id: 234,
        name: 'I work'
      }
    end

    def one_way_send_mail
      puts 'I will execute but not send a response'
    end
  end
end
