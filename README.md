# Darkroom Assessment

### Setup

Requirements:
`ruby 3.1.2`
`rails 7.0.3`

Make sure you have:

```
# update rails:
gem update rails

# update bundler:
gem update bundler

# clone branch to your local machine

# bundle
bundle install

# run rails server
rails s

# visit app locally
http://localhost:3000/

```

### Task

Once you have this app installed, and you can use visit and interact with http://localhost:3000/
Visit one of the images, eg http://localhost:3000/products/1 and notice the "Add to cart" button.
The task is to get this button to function like a normal e-commerce "Add to cart" button.

The button should have the following behavior:

* Any guest can visit an image, and click the "Add to cart" button.
* The cart modal (accessed by clicking the cart at the top right of the screen), should be populated by the product.
  * note the `app/views/products/_cart_item.html.erb` partial can be used for product in the cart list if you wish.
* The cart maintains any product that has been added to it. Wherever you visit, you can toggle the cart with the cart button, and all the products that have been added to the cart are there.
* You can use whatever you deem necessary to create the cart, and maintain its state.
* Once you are satisfied with your solution, push it to git and create a pull request.


This is what it could look like when complete:
![Screen Shot 2022-05-24 at 12 00 10](https://user-images.githubusercontent.com/14261469/170017821-aec8482f-4947-4cff-b5f7-528cd7e02da0.png)


Good luck!
