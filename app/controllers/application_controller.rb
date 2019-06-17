class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        info_self_cares_path
    end
end
