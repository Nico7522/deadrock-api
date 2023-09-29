import BaseSchema from '@ioc:Adonis/Lucid/Schema'

export default class Pages extends BaseSchema {
  protected tableName = 'pages'

  public async up () {
    this.schema.createTable(this.tableName, (table) => {
      table.increments('id')
      table.integer('page_number').notNullable();
      table.string('url').notNullable();
      table.integer('chapter_id').unsigned().references('id').inTable('chapters').notNullable();
      table.timestamps(true, true)

    })
  }

  public async down () {
    this.schema.dropTable(this.tableName)
  }
}
