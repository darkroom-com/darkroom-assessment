class CacheService
  DEFAULT_TIME = 15.minutes

  def initialize(expiration_time = nil)

    @expiration_time = expiration_time
  end

  def read(key)
    Rails.cache.read(key)
  end

  def write(object, key)
    Rails.logger.info "[Write #{key}]"
    Rails.cache.write(key, object, expires_in: expires_in)
  end

  private

  def expires_in
    @expiration_time || DEFAULT_TIME
  end
end