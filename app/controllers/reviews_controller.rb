class ReviewsController < ApplicationController
  def index
       render :json => Review.all, status: 200
   end
   def show
     review = Review.find(params[:id])

     render :json => review, status: 201
   end
   def create

       review = Review.create(review_params, "doctor_id":  params[:doctor_id] )


       if review.valid?
           render :json => review, status: 201
       else
           render :json => {error: "Review validation failed"}, status: 400
       end
   end

   def edit
       review = Review.find(params[:id])

       render :json => review, status: 200
   end

   def update
       review = Review
           .find(params[:id])
           .update_attributes(review_params)

       if review
           render :json => {success: "Review updated successfully"}, status: 204
       else
           render :json => {error: "Failed to update review"}, status: 400
       end
   end

   def destroy
       review = Review.find(params[:id])

       review.destroy

       if review.destroyed?
           render :json => {success: "Review destroyed successfully"}, status: 200
       else
           render :json => {error: "Error removing review"}, status: 400
       end
   end

private

   def review_params
       params.require(:review).permit(:text)
   end
end
