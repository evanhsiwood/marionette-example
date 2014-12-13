javascript libraries:

• jquery
• json2
• underscore
• backbone
• backbone.marionette

API

• Marionette.Application

• .on("initialize:after", cb)
    defined the initialize:after handler

• .addRegions({})

• .StaticView = Marionette.ItemView.extend({template: ""})


Define a region to display views


### Specify View Attributes


```
ContactManager.StaticView=Marionette.ItemView.extend({
    id: "static-view",
    tagName: "span",
    className: "instruction",
    template: "#static-template"
});
```

### CollectionView

```
var MyItemView = Marionette.ItemView.extend({});

Marionette.CollectionView.extend({
    itemView: MyItemView;
});
```

### Structuring Code with Modules

