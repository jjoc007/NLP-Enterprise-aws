
resource "aws_dynamodb_table" "nlp_file_metadata_table" {
  name           = "nlp_file_metadata"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "file_id"

  attribute {
    name = "file_id"
    type = "S"
  }

  tags = {
    Name = "nlp_file_metadata"
  }
}

resource "aws_dynamodb_table" "nlp_file_dictionary_table" {
  name           = "nlp_file_dictionary"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "file_id"

  attribute {
    name = "file_id"
    type = "S"
  }

  tags = {
    Name = "nlp_file_dictionary"
  }
}

resource "aws_dynamodb_table" "nlp_company_dictionary_table" {
  name           = "nlp_company_dictionary"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "company_id"

  attribute {
    name = "company_id"
    type = "S"
  }

  tags = {
    Name = "nlp_company_dictionary"
  }
}