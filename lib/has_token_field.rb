require "has_token_field/version"
require "active_record"

module HasTokenField
  def has_token_field(name)
    define_singleton_method :make_token do
      loop do
        token = SecureRandom.urlsafe_base64(15).tr('lIO0', 'sxyz')
        break token unless self.where(name => token).first
      end
    end

    self.send(:before_save, "ensure_#{name}")

    define_method "ensure_#{name}" do
      self[name] = self.class.make_token if self[name].blank? && self.class.column_names.include?(name.to_s)
    end
  end
end
ActiveRecord::Base.extend HasTokenField
