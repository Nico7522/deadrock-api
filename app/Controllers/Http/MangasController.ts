import type { HttpContextContract } from "@ioc:Adonis/Core/HttpContext";
import Manga from "App/Models/Manga";

export default class MangasController {
  public async store({ request }: HttpContextContract) {
    const manga = new Manga();
    manga.title = request.input("title");
    manga.author = request.input("author");

    await manga.save();
    return manga;
  }
}
