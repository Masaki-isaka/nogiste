require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Amazon S3用の設定
      provider: 'AWS',
      region: ENV['ap-northeast-1'],
      aws_access_key_id: ENV['AKIA3JY7TCWZXDL2XT7Z'],
      aws_secret_access_key: ENV['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'],
    }
    config.fog_directory     =  ENV['nogiste-com']
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  end

  # 日本語ファイル名の設定
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
end