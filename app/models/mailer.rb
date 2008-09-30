class Mailer < ActionMailer::Base
  def citizen_signup_notification(user)
    recipients user.email
    from       '"spot.us" <donotreply@spot.us>'
    subject    "Welcome to Spot.Us – “Community Funded Reporting.”"
    body :user => user
  end
  
  def reporter_signup_notification(user)
    recipients user.email
    from       '"spot.us" <donotreply@spot.us>'
    subject    "Welcome to Spot.Us – Reporting on Communities"
    body :user => user
  end
  
  def organization_signup_notification(user)
    recipients user.email
    from       '"spot.us" <donotreply@spot.us>'
    subject    "Spot.Us: Important Information on Joining"
    body :user => user
  end
  
  def news_org_signup_request(user)
    recipients '"David Cohn" <david@spotus.com>'
    from       '"spot.us" <donotreply@spot.us>'
    subject    "Spot.Us: News Org Requesting to Join"
    body        :user => user
  end

  def password_reset_notification(user)
    recipients user.email
    from       '"spot.us" <donotreply@spot.us>'
    subject    "Password Reset"
    body       :user => user
  end
end
