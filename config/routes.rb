AgencyIQ::Application.routes.draw do
  root 'comments#index'
  resources :comments

  resources :access_privs
  resources :accounts
  resources :acct_periods
  resources :addresses
  resources :ap_pdfs
  resources :application
  resources :approvals
  resources :approvals_items
  resources :aps
  resources :ar_items
  resources :archived_jobs
  resources :ars
  resources :assets_files
  resources :assets_prefs
  resources :assets_types
  resources :avails
  resources :billing_infos
  resources :bookmarks
  resources :calendars
  resources :cals
  resources :change_items
  resources :change_orders
  resources :check_items
  resources :checks
  resources :claven_sales
  resources :clients
  resources :comments
  resources :contacts
  resources :costs
  resources :credit_card_prefs
  resources :data_counts
  resources :depts
  resources :dictionaries
  resources :dictionary_words
  resources :est_revs
  resources :f_preferences
  resources :finances
  resources :groups
  resources :histories
  resources :history_clients
  resources :history_vendors
  resources :home_comments
  resources :homebases
  resources :int_items
  resources :je2s
  resources :jes
  resources :job_orders
  resources :job_tasks
  resources :job_types
  resources :job_user_fields
  resources :jobs
  resources :logs
  resources :media_briefs
  resources :media_est_items
  resources :media_ests
  resources :media_items
  resources :media_plans
  resources :media_prefs
  resources :meetings
  resources :mlink_logs
  resources :mlink_prefs
  resources :odbcusers
  resources :outboxes
  resources :palm_cats
  resources :palm_jobs
  resources :palm_tasks
  resources :payment_items
  resources :payments
  resources :pcs
  resources :pictures
  resources :po_items
  resources :po_templates
  resources :prefs
  resources :print_spec_values
  resources :print_specs
  resources :programs
  resources :projects
  resources :proposals
  resources :purchase_orders
  resources :rates
  resources :recur_aps
  resources :recur_ars
  resources :retainers
  resources :rfq_items
  resources :rfq_skus
  resources :rfq_vendors
  resources :rfqs
  resources :sales_actions
  resources :sales_campaigns
  resources :sales_letters
  resources :sched_revs
  resources :schedule_charts
  resources :schedule_headers
  resources :staffs
  resources :statements
  resources :stations
  resources :status_codes
  resources :sub_classes
  resources :task_tables
  resources :temp_tasks
  resources :thoughts
  resources :time_cards
  resources :time_imports
  resources :timers
  resources :un_checks
  resources :user_info_ctrs
  resources :user_windows
  resources :vendors
  resources :versions
  resources :web_ip_logs
  resources :web_logs
  resources :web_prefs
  resources :web_users
  resources :work_orders
  resources :workings
  resources :worksheets
  resources :y1099s

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
