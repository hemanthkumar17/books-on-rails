module Api 
  module V1
    class BooksController < ApplicationController
      def index
        books = Book.all
        render json: {status: 'SUCCESS', message: 'Loaded Books', data: books}, status: :ok
      end
      
      def show
        book = Book.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded Book', data: book}, status: :ok
      end
      
      def create
        book = Book.new(book_params)
        if book.save
          render json: {status: 'SUCCESS', message: 'Created Book', data: book}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Book not created', data: book.errors}, status: :unprocessable_entity
        end
      end
      
      def update
        book = Book.find(params[:id])
        if book.update(book_params)
          render json: {status: 'SUCCESS', message: 'Updated Book', data: book}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Book not Updated', data: book.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        book = Book.find(params[:id])
        if book.destroy
          render json: {status: 'SUCCESS', message: 'Deleted Book', data: book}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Book not Deleted', data: book.errors}, status: :unprocessable_entity
        end
      end

      private

      def book_params
        params.permit(:b_title, :author, :year, :publisher)
      end
    end
  end
end
  