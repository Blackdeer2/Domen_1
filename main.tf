module "table_authors" {
  source     = "./dynamodb"
  table_name = "authors"

}

module "table_courses" {
  source     = "./dynamodb"
  table_name = "courses"

}

module "iam" {
  source = "./iam"
  name   = "iam"

  dynamodb_authors_arn = module.table_authors.arn
  dynamodb_courses_arn = module.table_courses.arn
}
module "lambda" {
  source              = "./lambda"
  name                = "lambda"
  get_all_courses_arn = module.iam.get_all_courses_role_arn
}