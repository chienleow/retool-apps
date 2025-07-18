<Screen
  id="peopleDetailsScreen"
  padding={{ top: 0, bottom: 0, left: 12, right: 12 }}
  title="Details"
  uuid="116696f9-1397-4784-a5f6-2622c8c53a17"
>
  <Image
    id="image1"
    cornerType="square"
    ratio={1}
    src="{{selectedItem.value.image}}"
  />
  <KeyValue
    id="keyValue1"
    _rowKeysFormatted={{ email: "Email:", sales: "Sales:" }}
    allowTextWrapping="true"
    data="{{ selectedItem.value }}"
    header="{{ selectedItem.value.name }}"
    rows={["id", "name", "email", "sales", "image"]}
    rowVisibility={{
      id: false,
      name: false,
      email: true,
      sales: true,
      image: false,
    }}
    showSeparator="true"
    valueWidth="75%"
  />
</Screen>
