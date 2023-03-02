# class AdoptionsController < Sinatra::Base

#     # GET /adoptions
#     def index
#         @adoption = Adopton.AdoptionsController
#         render.json: @adoption
#     end

#     #GET /adoptions/1
#     def show
#         render json: @adoption
#     end

#     #POST /adoptions
#     def create_table
#         #byebug
#         adoption = Adoption.create(adoption_params)

#         if adoption.valid?
#             render.json: adoption.pet, status:
# end