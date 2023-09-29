import { DateTime } from 'luxon'
import { BaseModel, HasMany, column, hasMany } from '@ioc:Adonis/Lucid/Orm'
import Page from './Page';

export default class Chapter extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column()
  public title: string;

  @column()
  public author: string;

  @hasMany(() => Page, {
    foreignKey: "chapter_id"
  })
  public pages: HasMany<typeof Page>

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime
}
