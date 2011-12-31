module ValidateEmailAddress

    def validates_email_address_of attr_name
        email_regex = /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
        self.validates_format_of attr_name,
            :with => email_regex,
            :message => "is not a valid email address"
        self.validates_presence_of attr_name,
            :message => "- missing email address, please enter"
        self.validates_uniqueness_of attr_name,
            :case_sensitive => false,
            :message => "- email address is already in use "

    end
end

