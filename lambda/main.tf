# start get-all-courses

data "archive_file" "zip_get_all_courses" {
 type        = "zip"
 source_file  = "lambda/get-all-courses/get-all-courses.js"
 output_path = "lambda/get-all-courses/get-all-courses.zip"
}

resource "aws_lambda_function" "get_all_courses" {
 filename                       = data.archive_file.zip_get_all_courses.output_path
 function_name                  = "get-all-courses"
 role                           = var.get_all_courses_arn
 handler                        = "get-all-courses.handler"
 runtime                        = "nodejs16.x"

}

# end get-all-courses

# start get-course

data "archive_file" "zip_get_course" {
 type        = "zip"
 source_file  = "lambda/get-course/get-course.js"
 output_path = "lambda/get-course/get-course.zip"
}

resource "aws_lambda_function" "get_course" {
 filename                       = data.archive_file.zip_get_course.output_path
 function_name                  = "get-course"
 role                           = var.get_course_arn
 handler                        = "get-course.handler"
 runtime                        = "nodejs16.x"

}

# end get-course

# start save-course

data "archive_file" "zip_save_course" {
 type        = "zip"
 source_file  = "lambda/save-course/save-course.js"
 output_path = "lambda/save-course/save-course.zip"
}

resource "aws_lambda_function" "save_course" {
 filename                       = data.archive_file.zip_save_course.output_path
 function_name                  = "save-course"
 role                           = var.save_course_arn
 handler                        = "save-course.handler"
 runtime                        = "nodejs16.x"

}

# end save-course

# start update-course

data "archive_file" "zip_update_course" {
 type        = "zip"
 source_file  = "lambda/update-course/update-course.js"
 output_path = "lambda/update-course/update-course.zip"
}

resource "aws_lambda_function" "update_course" {
 filename                       = data.archive_file.zip_update_course.output_path
 function_name                  = "update-course"
 role                           = var.update_course_arn
 handler                        = "update-course.handler"
 runtime                        = "nodejs16.x"

}

# end update-course
