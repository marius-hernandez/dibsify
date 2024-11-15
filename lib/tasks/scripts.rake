namespace :start do
    desc "Start processes defined in Procfile.dev"
    task dev: :environment do
      sh "foreman start -f Procfile.dev"
    end
  end
