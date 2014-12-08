require 'spec_helper'


describe OrdersController, type: :controller do
  it 'should redirect to store_path if cart is empty' do
    get :new
    expect(subject).to redirect_to store_path
  end

  it 'should get new' do
    item = LineItem.new
    item.build_cart
    item.product = products(:ruby)
    item.save!
    session[:cart_id] = item.cart.id
    get :new
    expect(response).to have_http_status(:success)
  end
end