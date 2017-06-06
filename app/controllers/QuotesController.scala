package controllers

import play.api.mvc.{Action, Controller}

class QuotesController extends Controller {

  def get(ticker: String, start: Option[String]) = Action {
    Ok(ticker + " " + start)
  }

}
