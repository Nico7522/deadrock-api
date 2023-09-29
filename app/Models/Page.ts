import { DateTime } from "luxon";
import { BaseModel, BelongsTo, belongsTo, column } from "@ioc:Adonis/Lucid/Orm";
import Chapter from "./Chapter";

export default class Page extends BaseModel {
  @column({ isPrimary: true })
  public id: number;

  @column()
  public page_number: number;

  @column()
  public url: string;

  @column()
  public chapter_id: number;

  @belongsTo(() => Chapter, {
    foreignKey: "id",
    serializeAs: "chapter",
  })
  public chapter: BelongsTo<typeof Chapter>;

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime;

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime;
}
