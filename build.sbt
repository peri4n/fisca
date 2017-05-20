name := "fisca"

version := "1.0"

lazy val `fisca` = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.11.7"

libraryDependencies ++= Seq(
  jdbc,
  "com.typesafe.play" %% "anorm" % "2.5.1",
  cache,
  "org.postgresql" % "postgresql" % "9.4.1209",
  ws,
  specs2 % Test )

libraryDependencies += evolutions

unmanagedResourceDirectories in Test <+=  baseDirectory ( _ /"target/web/public/test" )  

resolvers += "scalaz-bintray" at "https://dl.bintray.com/scalaz/releases"  