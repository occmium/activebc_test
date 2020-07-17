<a name="to_lift"><h2>Auto Test</h2></a>

#### Test task. Web Application Testing In Ruby.

#### List of contents
  - *[Task](#task)*
  - *[Description](#description)*
  - *[How to use](#how_to_use)*
  - *[# TODO](#future_plans)*
  - *[System requirements](#requirements)*

<a name="task"><h4>Task</h4></a>

You need to organize testing of the user login and registration scenario on https://house-dev.activebc.ru

The result should be two scenarios. They check the user's login and registration. 

There should be a document describing how to use these scenarios.

[Up](#to_lift)

<a name="description"><h4>Description</h4></a>
The program written in Ruby for automated testing of a web application using the library [Watir](http://watir.com/) (An open source Ruby library for automating tests. Watir interacts with a browser the same way people do: clicking links, filling out forms and validating text.)

[Up](#to_lift)

<a name="how_to_use"><h4>How to use</h4></a>

The program uses the Ruby programming language.

To install you will need a library manager. Run
following commands:

  + to install Bundler:

    `gem install bundler`

  + clone the program from the repository:

    `git clone https://github.com/occmium/activebc_test.git`

  + go to the program folder:

    `cd activebc_test`

  + install all of the required gems:

    `bundle install`

  + create the file `.env` and set the value of the environment variable as in the example `.env.example`

  + start the test:

    `rspec`

[Up](#to_lift)

<a name="future_plans"><h4># TODO</h4></a>

  - Add exception handling
  - Delete the user created by the test from the test database
  - Anything else...

[Up](#to_lift)

<a name="requirements"><h4>System requirements</h4></a>

program|version
:---:|:---:
Ruby|2.7.0
Mozilla browser|78.0.2 (64-bit)

[Up](#to_lift)