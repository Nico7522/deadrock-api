import { DateTime } from 'luxon'
import { BaseModel, HasMany, column, hasMany } from '@ioc:Adonis/Lucid/Orm'
import Chapter from './Chapter';

export default class Manga extends BaseModel {
  @column({ isPrimary: true })
  public id: number
  @column()
  public title: string;

  @hasMany(() => Chapter, {
    foreignKey: "id",
  })
  public chapters: HasMany<typeof Chapter>


  @column()
  public author: string;
  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime
}
