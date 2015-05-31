## Overview

Demonstration of how to set up collection selects which point to more than one
kind of model, using a polymorphic relationship and Global ID.

Based on this blog post: http://stefan.haflidason.com/simpler-polymorphic-selects-in-rails-4-with-global-id/

Blog post is based on Rails 4.1; this example is for 4.2+.

## Setup

### Setting up the Models

```
be rails g model Employee name:string
be rails g model Order reference:string
be rails g scaffold Record owner_id:integer:index owner_type:string:index
be rake db:migrate
```

### Test Data

In the Rails console:


```
Employee.create!(name: "Stefan")
Employee.create!(name: "John")
Order.create!(reference: "UK123")
Order.create!(reference: "US345")
```
