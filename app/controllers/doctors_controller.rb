class DoctorsController < ApplicationController
     def index
         render :json => Doctor.all, status: 200
     end
     def show
       doctor = Doctor.find(params[:id])

       render :json => doctor, status: 201
     end

     def create

         doctor = Doctor.create(doctor_params)

         if doctor.valid?
             render :json => doctor, status: 201
         else
             render :json => {error: "Doctor validation failed"}, status: 400
         end
     end
     def edit
         doctor = Doctor.find(params[:id])

         render :json => doctor, status: 200
     end

     def update
         doctor = Doctor
             .find(params[:id])
             .update_attributes(review_params)

         if doctor
             render :json => {success: "Doctor updated successfully"}, status: 204
         else
             render :json => {error: "Failed to update doctor"}, status: 400
         end
     end

     def destroy
         doctor = Doctor.find(params[:id])

         doctor.destroy

         if doctor.destroyed?
             render :json => {success: "Doctor destroyed successfully"}, status: 200
         else
             render :json => {error: "Error removing doctor"}, status: 400
         end
     end

  private

     def doctor_params
         params.require(:doctor).permit(:name) if params[:doctor]
     end
  end
