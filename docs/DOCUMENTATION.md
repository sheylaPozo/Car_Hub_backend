# Reservation Enpoints

reservation endpoints have been developed, the next endpoints cover the needs of the reservation and details section of the page, will be detailed each one


## Cars Data

### `GET http://carhubackend.herokuapp.com/'models/:id'`

Will display the The data of only one car

## Reserved List

### `GET http://carhubackend.herokuapp.com/reserved`

Requires the user to be connected, it will display a list of the reserved cars, including some information of the car aside the data of the reservation itself, like the country and date

## Reserve

### `POST https://carhubackend.herokuapp.com/reserved`

Accept next format
```
{
  "car_id": car_id
  "date": date
  "country": country
}
```
(requires the user to be connected)


This let you create a reservation of the user, if it successful it will display
```
{ 
  render json: { message: 'Car Reserved' }
}
```
in case of error will return status 500 or 404

Also will display an error if the user is not connected or the id is not a number

## Delete Reservation

### `POST https://carhubackend.herokuapp.com/reserved/delete`

get the next format
```
{
  "reserved_id": reserved_id
}
```
It will delete a reservation of the current connected user, if the reservation is on the list of the user, it will be deelted and show the next message

```
{ message: 'Reservation Deleted' }
```
if the reservation is not in the user list, it will return an 404 status

if the user is not connected will return a message saying the user is not connected

# List Enpoints

the next endpoints cover the needs of the model's index and the delete section of the page, will be detailed each one


## Cars List

### `GET http://carhubackend.herokuapp.com/models`

Will display the list of all the current cars loaded on the page

## Create a Car

### `POST https://carhubackend.herokuapp.com/models`

Accept next format
```
{
  "name": name
  "description": description
  "price": price
  "fee": fee
  "horse_power": horse_power
  "background_color": hexColor
  "image": image

}
```

if the car have been created successfully
```
{ 
  message: "Car saved!"
}
```
else, if not was saved
```
{ 
  message: "Incorrect parameters"
}
```

## Car List (ignoring banned items of the user)

### `GET http://carhubackend.herokuapp.com/models_b`

Requires the user to be connected, it will display a list of the items, ignoring that is banned by the user in the "Delete" Page

## Ban

### `POST https://carhubackend.herokuapp.com/ban`

Accept next format
```
{
  "car_id": car_id
}
```
(requires the user to be connected)


if the car is banned for the user successfully
```
{ 
  message: "The car will not appear in the list"
}
```
else
```
{ 
message: "The car will appear in the list"
}
```

Also will display an error if the user is not connected or the id is not a number

## Car List (for the delete page)

### `GET https://carhubackend.herokuapp.com/list`

Display a list of cars, but include the value if the user banned it or not, requires the user to be connected

# Login Enpoints

In this branch the user login system has been developed, the next endpoints cover the needs of the project about login, logout and user registration, also include a function to verify is the user is logged, the next information will be detailed


## Member Data

### `GET http://carhubackend.herokuapp.com/member-data`

this function will return a message depending if the user is connected or not

if the user is not connected wil return a json like this (also if the token is invalid)
```
{
    "message": "You are not connected"
}
```

if the user is connected will display
```
{
    "message": "If you see this, you're in!"
}
```

## Create an Account

### `POST http://carhubackend.herokuapp.com/users`

it let you create a account, accept next format
```
{
  "user": {
    "email": "test@example.com",
     "password": "12345678"
   }
}
```

if the status is 500, mean the email is already used

if you get the next message
```
{
    "message": "Signed up sucessfully."
}
```
means the user have been created

## Login

### `POST https://carhubackend.herokuapp.com/users/sign_in`

Accept next format
```
{
  "user": {
    "email": "test@example.com",
     "password": "12345678"
   }
}
```

if the user does not exist will display
```
{
    "message": "Invalid user and password."
}
```
if the user exist it will display
```
{
    "message": "You are logged #{resource.email}."
}
```

and will have the authentication token in the header like this "bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI1Iiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjM5MzIzNzQ4LCJleHAiOjE2MzkzMjczNDgsImp0aSI6Ijg0MDI5ZDU4LWY3NzUtNDk5Ny04Yzk0LTZlMDVjY2U0YTlhMiJ9.15KzGIWy7n1Gcsr-pY70WLp5g2jA86OEQsLSkVFF1n8"

## Logout

### `DELETE https://carhubackend.herokuapp.com/users/sign_out`

make the current token invalid

if it is useful will display
```
{
  "message": "You are logged out."
}
```
if the token is already destroyed or invalid will display 
```
{
    "message": "Hmm nothing happened."
}
```
