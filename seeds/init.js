exports.seed = function(knex) {
  return knex("demo_table").insert({
    text_value: "test æ ø å",
    array_value: JSON.stringify(["test", "test1"]),
    object_value: {
      "object_key": {
        "key": "value",
      },
    },
  });
};
