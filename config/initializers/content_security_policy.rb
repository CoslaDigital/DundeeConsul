# Be sure to restart your server when you modify this file.

# Define an application-wide content security policy
# For further information see the following documentation
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy

Rails.application.config.content_security_policy do |policy|
 #   policy.default_src :none
    policy.connect_src :self, :https
    policy.font_src    :self, :https, :data
    policy.img_src     :self, :https, :data
    policy.object_src  :none
    policy.script_src  :unsafe_inline, :https
 #   policy.script_src :self, :https
    policy.style_src   :unsafe_inline, :https
 #   policy.form_action :self
    policy.base_uri    :self
    policy.frame_ancestors :none
 #   # Specify URI for violation reports
    policy.report_uri "/privacy"
 end
 
 # If you are using UJS then enable automatic nonce generation
 # Rails.application.config.content_security_policy_nonce_generator = -> request { SecureRandom.base64(16) }
 
 # Report CSP violations to a specified URI
 # For further information see the following documentation:
 # https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
 # Rails.application.config.content_security_policy_report_only = true