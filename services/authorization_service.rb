class AuthorizationService
  class << self

    def auth(email, pass)
      {
        ok:    true,
        email: email,
        pass:  pass
      }
    end
  end
end
