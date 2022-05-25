module ApplicationHelper
  def guest_id
    @guest_id ||= Digest::SHA256.hexdigest(request.ip)
  end
end
