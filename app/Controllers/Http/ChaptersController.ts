import type { HttpContextContract } from "@ioc:Adonis/Core/HttpContext";
import Chapter from "App/Models/Chapter";
import Page from "App/Models/Page";

export default class ChaptersController {
  public async index() {
    const chapters = await Chapter.query();
    return chapters;
  }

  public async store({ request }: HttpContextContract) {
    const chapter = new Chapter();
    chapter.title = request.input("title");
    chapter.author = request.input("author");
    await chapter.save();
    const pageIds = request.input("pages");
    for (const pageId of pageIds) {
      const page = new Page();
      page.page_number = pageId.page_number;
      page.url = pageId.url
      page.chapter_id = chapter.id;
      await page.save();
    }
 
   await chapter.load('pages')
    
    return chapter;
  }
}
