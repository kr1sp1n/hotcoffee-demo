hotcoffee-demo
=====================

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Hotcoffee demo to show how to persist via the MongoDB plugin.

Try: http://hotcoffee-demo.herokuapp.com

Usage
---------------------

#### POST a new item to a collection

If the collection name does not exist then it will be created for you.

__REQ__

In this case the collection name is `simpsons`.

    curl -X POST -d "name=Lisa Simpson" http://hotcoffee-demo.herokuapp.com/simpsons

__RES__

```json
{
  "name": "Lisa Simpson"
}
```

### GET all items of a collection

__REQ__

    curl http://hotcoffee-demo.herokuapp.com/simpsons

__RES__

```json
[
  {
    "name": "Lisa Simpson",
    "_id": "55084ffdd51c436a7833a424"
  },
  {
    "name": "Bart Simpson",
    "_id": "550851e5d51c436a7833a425"
  }
]
```

### GET a list of all collections

__REQ__

    curl http://hotcoffee-demo.herokuapp.com

__RES__

```json
[
  "simpsons",
  "a-team"
]
```
