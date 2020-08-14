module Types
  class QueryType < Types::BaseObject
    
    # to get all users
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    # to get a single user
    field :user, [Types::UserType], null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end
