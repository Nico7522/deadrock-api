import BaseSchema from '@ioc:Adonis/Lucid/Schema'

export default class Chapters extends BaseSchema {
  protected tableName = 'chapters'

  public async up () {
    this.schema.createTable(this.tableName, (table) => {
      table.increments('id')
      table.integer('chapter_number').notNullable();
      table.integer('manga_id').unsigned().references('id').inTable('manga').notNullable();
      table.timestamps(true, true)
    })
  }

  public async down () {
    this.schema.dropTable(this.tableName)
  }
}
