class CallsController < ApplicationController

	def index
		@call = Call.all
	end

	def show
		@call = Call.find(params[:id])
	end

	def new
		@call = Call.new
	end

	def edit
		@call = Call.find(params[:id])
	end

	def update
		@call = Call.find(params[:id])

		if @call.update(call_params)
			redirect_to @call
		else
			render "edit"
		end
	end

	def create
		@call = Call.new(call_params)

		if @call.save
			redirect_to @call
		else
			render "new"
		end
	end

	def destroy
		@call = Call.find(params[:id])
		@call.delete

		redirect_to calls_path
	end

	private
	def call_params
		params.require(:call).permit(:name, :notes)
	end
end
