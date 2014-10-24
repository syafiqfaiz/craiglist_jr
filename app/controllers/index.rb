get '/' do
  @aunty = params[:aunty]
  puts @aunty
  # Look in app/views/index.erb
  erb :index
end

post '/aunty' do
  speech = params[:user_input]
  redirect to("/?aunty=#{speech}")
end


get '/posts/new/' do
  @categories = Category.all
  erb :add_new_post
end


post '/posts' do

  Post.create(user_name: params[:user_name], email: params[:email], title: params[:title], category_id: params[:categories])
  a = Post.last
"You have succesfully add a new list into Pasar Karat MAGIC."
" id: #{a.id} title: #{a.title} category_id: #{a.category_id}"
end

get '/accomodation' do

  # @all_list = Post.find(:all)
  cat_id = Category.find_by(name: 'accomodation')

  @all_list= Post.where(:category_id == cat_id.id.to_s)
  erb :show_all
end


get '/cars' do

  # @all_list = Post.find(:all)
  @all_list = Category.find(:all)

  # @all_list= Post.where(:category_id == cat_id)
  erb :show_all_category
end

post '/add_new_category' do
 erb :add_new_category
end

post '/add_new_category/success' do
  Category.create(name: params[:category_name].downcase )
  "You have succesfully created new category"
end

get '/show_all' do
  "Hello World"
end