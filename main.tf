resource "local_file" "assignment" {
  filename = "mahesh.py"
  content  = "Hello World"
}

resource "local_file" "assignment1" {
  filename = local.a
  content  = random_id.assignment-random.hex
}
locals {
  a = "mahesh1.py"
  cont1 = "Random Id file"
}

resource "random_id" "assignment-random" {
  byte_length = 8
}

//For String
resource "local_file" "assignment2" {
  filename = local.b
  content  = var.var-mahesh
}

//For Number
resource "local_file" "assignment3" {
  filename = local.c
  content  = var.var-mahesh1
}

//For List
resource "local_file" "assignment4" {
  filename = local.d
  content  = var.var-mahesh2[2]
}

//For Map
resource "local_file" "assignment5" {
  filename = local.e
  content  = var.var-mahesh3["content"]
}
//For Object
resource "local_file" "assignment6" {
  filename = local.f
  content  = var.var-mahesh4["name"]
}