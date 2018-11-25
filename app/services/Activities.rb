class Activities
    include HTTParty

    base_uri 'https://kamba-api-staging.herokuapp.com'

    def get_data
        self.class.get('/v1/users/activities', :headers => {'Authorization': 'Token ySJr21cFmVWMM7D33xRQAAtt'})
    end

    def activities
        get_data.parsed_response

        if get_data.code.to_i == 200
            get_data.parsed_response
        else
            raise "Error fetcing data from Uusekamba API"
        end
    end
end