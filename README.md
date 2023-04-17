### Description

Sinatra API backend of my Rostr application. My React frontend repository can be found [here](https://github.com/jflet004/rostr-frontend) You can view, enroll, update and delete both students and programs; as well as being able to view which programs each student is currently enrolled in and vice-versa.  

### Backend Setup

Fork and clone this repository to get started.

**Important**: Be sure you fork a copy of the repo into your GitHub account
before cloning it. You can do this by clicking the
"Octocat" button at the top of this page, then clicking "Fork" in the upper right corner of the repo page.

Run `bundle install` to install the gems.

Then, run `bundle exec rake db:seed` to populate the database

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).


### Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change. Please make sure to update tests as appropriate.

## Resources

- [dbdiagram.io][]
- [Postman][postman download]

[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
