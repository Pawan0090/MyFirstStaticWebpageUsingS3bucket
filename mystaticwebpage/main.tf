//Create the S3 bucket 

resource "aws_s3_bucket" "Mybucket" {
  bucket = "pawans3buckethostingwebsite09" // i have define the bucket name this name should be unique globally

}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.Mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.Mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.Mybucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "index.html"
  source = "index.html"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "Image" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "bannerweb.jpeg"
  source = "bannerweb.jpeg"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "Image1" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "facebook.png" 
  source = "facebook.png"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "Image2" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "insta.png" 
  source = "insta.png"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "Image3" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "twitter.png" 
  source = "twitter.png"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "Image4" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "twocolum1.png" 
  source = "twocolum1.png"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "Image5" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "twocolum2.webp" 
  source = "twocolum2.webp"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "Image6" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "youtube.png" 
  source = "youtube.png"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "Image7" {
  bucket = aws_s3_bucket.Mybucket.id
  key    = "link.png" 
  source = "link.png"
  acl    = "public-read"
  content_type = "text/html"
}

resource "aws_s3_bucket_website_configuration" "Website" {
  bucket = aws_s3_bucket.Mybucket.id

  index_document {
    suffix = "index.html"
  }
    depends_on = [ aws_s3_bucket_acl.example ]

}

