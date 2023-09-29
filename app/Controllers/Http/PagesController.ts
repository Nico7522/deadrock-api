import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Page from 'App/Models/Page';

export default class PagesController {

    public async store({ request }: HttpContextContract) {
        const page = new Page();
        page.page_number = request.input("page_number");
       
        await page.save();
        return page;
      }
}
