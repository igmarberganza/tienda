class JsonWebToken

    def self.encode(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end
    
    def self.decode(token)
        return HashWithIndifferentAccess.new(JWT.decode(token,Rails.application.secrets.secret_key_base)[0]) # es en una sola linea 
        rescue #para manejo de exepciones
        nil #nil = null
    end
    
end