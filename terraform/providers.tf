terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "vlad-milevsky-bucket"
    region     = "ru-central1"
    key        = "./status.tfstate"
    access_key = "YCAJEaV2ZXaHwH6VBpUb3tq-4"
    secret_key = "YCMcTly1laq2YHK6Vd61cL4NqvvohnDeSQZtccfo"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = "AQAAAAAAj43QAATuwaZxmI3B1ENSot2r1onn1w0"
  cloud_id  = "b1g43hks12bv8as0q653"
  folder_id = "b1ga7u7bcjd3rfctvh7j"
  zone      = "ru-central1-a"
}
