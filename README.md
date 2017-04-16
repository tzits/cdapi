# CareDash API

### Assignment

1. API consists of Doctors and Reviews
2. Doctors can have many reviews
3. Associated objects should be returned with GET requests for each model
3. Child objects will return parent elements

### Considerations

The main question I came up against was the best method for ensuring that the child elements were returned with parent elements in a readable fashion. I brainstomed a number of methods to do so. One was creating the review model so that it included the doctor element. I also considered calling the Doctor in the review controller and packaging that with the json response. I finally settled on using serializers, which helped keep the controller thin and made the json response easier for a user to read. 

```
class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :doctor_id
  belongs_to :doctor
  class DoctorSerializer < ActiveModel::Serializer
    attributes :name
  end
end
```

This also involves only making one database request from the controller, likely streamlining the process.

### Models

I kept the schema simple, using a postgresql database. The doctors only have a name, and the reivews are text, as well as the associated doctor_id.

```

ActiveRecord::Schema.define(version: 20170414182812) do


  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "doctor_id"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
```

