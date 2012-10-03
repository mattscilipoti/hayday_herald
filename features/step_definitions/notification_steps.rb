module NavigationLogic
  def path_to(path_name)
    send("#{path_name.underscore}_path")
  end
end
World(NavigationLogic)

Given /am on the (.+) page$/ do |page_name|
  visit path_to(page_name)
end

Then /^a "(.+)" email should have been sent to "(.+)"$/ do |email_type, recipient|
  email = ActionMailer::Base.deliveries.last

  expect(email.to).to include(recipient)

  expected_subject = case email_type
  when /Share a Lesson/i
    I18n.translate!(:subject, :scope => 'mailer.share_lesson')
  else
    raise "You must add codd to support that email_type (#{email_type})."
  end

  expect(email.subject).to match(expected_subject)
end

#ensure no .flashes.error
Then /should not see any error messages$/ do
  #TODO: show contents of error in assertion failed message.
  error_messages_selector = '#errorExplanation'
  flash_error_selector = '#flash .error, #flash .failure'
  if page.respond_to? :should
    page.should have_no_css(flash_error_selector), unexpected_node_contents('#flash')
    page.should have_no_css(error_messages_selector)
  else
    assert page.has_no_css(flash_error_selector), unexpected_node_contents('#flash')
    assert page.has_no_css(error_messages_selector)
  end
end

Then /^I should receive the "([^"]+)" email$/ do |email_type|
  expected_subject = case email_type.parameterize.underscore.to_sym
  when :how_to_reset_your_password
    "Reset your LearnZillion password"
  else
    raise "That email_type (#{email_type}) is not supported"
  end
  email = ActionMailer::Base.deliveries.last
  email.subject.should == expected_subject
end

Then /should see a (alert|error|failure|notice|success) (?:message|notice)$/ do |flash_type|
  page.should have_selector("#flash .#{flash_type}"), unexpected_node_contents('#flash')
end

# Used to verify a specific message against the locale string
Then /should see the "([^"]+)" (failure) message/ do |requested_message, message_type|
  requested_message = requested_message.parameterize.underscore.to_sym
  i18n_key = case requested_message
             when :unable_to_reset_password # list authentication realted messages here
               "authentication.#{requested_message.to_s}"
             else
               "flash.#{requested_message}"
             end

  message = I18n.translate!(i18n_key)
  step "I should see this #{message_type} message:", message.squeeze(" ") # because html squezzes spaces
end

Then /should see this (alert|error|failure|notice|success) message:$/ do |flash_type, message|
  page.should have_selector("#flash .#{flash_type}", :text => message)
end

Then /the (alert|error|failure|notice|success) message should contain "([^"]+)"$/ do |flash_type, message|
  step "should see a #{flash_type} message"
  msg_tag = find("#flash .#{flash_type}")
  msg_tag.text.should match /#{message}/i
end
