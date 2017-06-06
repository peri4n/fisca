package controllers

import javax.inject.Inject

import anorm._
import play.api.db.DBApi
import play.api.mvc.{Action, Controller}

class TickerController @Inject()(val db: DBApi) extends Controller {

  def list = Action {
    db.database("default").withConnection { implicit connection =>
      val allNames = SQL(s"SELECT ticker FROM symbol;").as(SqlParser.str("ticker").*)
      Ok(allNames.mkString(","))
    }
  }

}
