class SampleWorker
    include Sidekiq::Worker
    sidekiq_options queue: :sample

    def perform(nogimasa_id)
        user=Nogimasa.find(nogimasa_id)
        username="UserIDは#{nogimasa_id}だよ!"
        user.update_attribute(:username, username)
    end
end