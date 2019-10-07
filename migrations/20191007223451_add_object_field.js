exports.up = async (knex) => {
  await knex.schema.alterTable("demo_table", (t) => {
    t.jsonb("object_value");
  });
};

exports.down = async (knex) => {
  await knex.schema.alterTable("demo_table", (t) => {
    t.dropColumn("object_value");
  });
};
