RailsAdmin.config do |config|

  ### Popular gems integration
  config.audit_with :paper_trail, 'User', 'PaperTrail::Version'

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan, AdminAbility

  config.model 'User' do
    object_label_method do
      :custom_label_method
    end
  end

  config.model Researcher do
    field :user do
      associated_collection_scope do
        Proc.new { |scope|
          scope = scope.where(role: :investigador)
        }
      end
    end
    field :scientific_articles
    field :intellectual_properties
  end

  config.model Company do
    field :user do
      associated_collection_scope do
        Proc.new { |scope|
          scope = scope.where(role: :usuario_empresa)
        }
      end
    end
    field :name
    field :industry
    field :reniecyt
    field :location
  end

  config.model Entrepreneur do
    field :user do
      associated_collection_scope do
        Proc.new { |scope|
          scope = scope.where(role: :usuario_emprendedor)
        }
      end
    end
    field :organization
  end



  def custom_label_method
    self.email
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end
end
