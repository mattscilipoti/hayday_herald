namespace :db do
  # add tasks to run after migration completes
  task :migrate do
    exit unless Rails.env.development? # exit instead of return because rake task is a block not method

    # run db:test:prepare last because it messes with RAILS_ENV
    puts "INFO: Preparing test db..."
    Rake::Task['db:test:prepare'].invoke

    Rake::Task['db:seed'].invoke
  end
end
