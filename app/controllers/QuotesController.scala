package controllers

import javax.inject.Inject

import play.api.db.DBApi
import play.api.libs.ws.WSClient
import play.api.mvc.{Action, Controller}

import scala.concurrent.ExecutionContext.Implicits.global

class QuotesController @Inject()(val db: DBApi, val ws: WSClient) extends Controller {

  def get(ticker: String, start: Option[String]) = Action.async {
    ws.url("http://www.google.com/finance/historical?cid=22144&startdate=Jun+1%2C+2015&enddate=Jun+6%2C+2017&num=30&output=csv")
      .get()
      .map { response =>
        Ok(response.body)
      }
  }

}
