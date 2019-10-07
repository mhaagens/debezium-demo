exports.up = async (knex) => {
  await knex.schema.createTable("demo_table", (t) => {
    t.uuid("id")
      .primary()
      .unique()
      .notNullable()
      .defaultTo(knex.raw("uuid_generate_v4()"));
    t.string("text_value");
    t.jsonb("array_value").index(null, 'GIN');
    t.timestamps(true, true);
  });
};

exports.down = async (knex) => {
  await knex.schema.dropTableIfExists("demo_table");
};
