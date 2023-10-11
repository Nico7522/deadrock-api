import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, HasMany, belongsTo, column, hasMany } from '@ioc:Adonis/Lucid/Orm'
import Page from './Page';
import Manga from './Manga';

export default class Chapter extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column()
  public manga_id: number;

  @column()
  public chapter_number: number;

  @belongsTo(() => Manga, {
    foreignKey: "manga_id",
    serializeAs: "manga",
  })
  public manga: BelongsTo<typeof Manga>;

  @hasMany(() => Page, {
    foreignKey: "chapter_id"
  })
  public pages: HasMany<typeof Page>

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime
}
