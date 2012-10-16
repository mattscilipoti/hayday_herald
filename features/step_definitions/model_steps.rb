# Handles most models (listed in regex)
# Other models are in their respective step files
#
Given /^(?:a|an) (EventJournal|Klass|LessonSet|Resource|Standard|User) exists$/i do |model_name|
  @current_model = Factory.create(model_name.underscore.to_sym)
end

