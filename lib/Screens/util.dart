// ignore_for_file: non_constant_identifier_names

List<Map> FoodList=[
  {
    "cat_name":"Pizza",
    "cat_image":"https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
    "product_list":[
      {
        "name":"Italian",
        "price":11,
        "rating":4.5,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w="
      },
      {
        "name":"Mexican",
        "price":12,
        "rating":4.3,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
      },
      {
        "name":"American",
        "price":10,
        "rating":4.2,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
      }
    ]
  },
  {
    "cat_name":"Salad",
    "cat_image":"https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
    "product_list":[
      {
        "name":"Fried Rice",
        "price":7,
        "rating":4.4,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
      },
      {
        "name":"Savannah Salad",
        "price":3,
        "rating":4.2,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
      },
      {
        "name":"Turkey Salad",
        "price":8,
        "rating":4.0,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
      },
    ]
  },
  {
    "cat_name":"Pasta",
    "cat_image":"https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
    "product_list":[
      {
        "name":"Red sauce",
        "price":11,
        "rating":4.5,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
      },
      {
        "name":"White sauce",
        "price":8,
        "rating":4.2,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
      },
      {
        "name":"Mix sauce",
        "price":13,
        "rating":4.6,
        "image": "https://media.istockphoto.com/id/1192094401/photo/delicious-vegetarian-pizza-on-white.jpg?s=2048x2048&w=is&k=20&c=0PxtzaX36DekaPwrG3B86MLGKp4UqMYqX3cj4vRR-1w=",
      }
    ]
  },
];

List<Map> cartList=[];

String formatNumber(int number) {
  return number < 10 ? '0$number' : number.toString();
}