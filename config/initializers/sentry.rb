Sentry.init do |config|
  config.dsn = 'https://15162e38892940359fd82461fb13879f@o4505244285992960.ingest.sentry.io/4505244312338432'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # To activate performance monitoring, set one of these options.
  # We recommend adjusting the value in production:
  config.traces_sample_rate = 1.0
  # or
  # config.traces_sampler = lambda do |context|
  #   true
  # end
end