import type { HttpContextContract } from "@ioc:Adonis/Core/HttpContext";
import Chapter from "App/Models/Chapter";
import Manga from "App/Models/Manga";
import Page from "App/Models/Page";

export default class ChaptersController {
  public async index() {
    const chapters = await Chapter.query();
    return chapters;
  }

  public async store({ request }: HttpContextContract) {
    const chapter = new Chapter();
    chapter.chapter_number = request.input("chapter_number");
    chapter.manga_id = 1;
    await chapter.save();

    const pageIds = request.input("pages");
    for (const pageId of pageIds) {
      const page = new Page();
      page.page_number = pageId.page_number;
      page.url = pageId.url;
      page.chapter_id = chapter.id;
      await page.save();
    }
    await chapter.load("manga");
    await chapter.load("pages");

    return chapter;
  }
}
