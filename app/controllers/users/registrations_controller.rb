class Users::RegistrationsController < Devise::RegistrationsController
  devise_for :users, skip: :registrations
  devise_scope :user do
    resource :registration,
	    only: [:new, :create, :edit, :update],
	    path: 'users',
	    path_names: { new: 'sign_up' },
	    controller: 'devise/registrations',
	    as: :user_registration do
	      get :cancel
	    end
	
  end

	protected

	def after_sign_up_path_for('starts')
		after_sign_up_path_for(:starts)
	end

  def after_sign_in_path_for('starts')
    after_sign_in_path_for(:starts)
  end

  # def new
  #   super
  # end

  # def create
  #   super
  # end
end
