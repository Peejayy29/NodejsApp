# resource "aws_db_subnet_group" "my_db_subnet_group" {
#   name       = "my-db-subnet-group"
#   subnet_ids = [
#     aws_subnet.private_subnet_2.id,
#     aws_subnet.private_subnet_1.id
#   ]
# }

# resource "aws_db_instance" "my_rds_instance" {
#   identifier            = "my-rds-instance"
#   allocated_storage     = 20
#   instance_class        = "db.t2.micro"
#   engine                = "mysql"
#   engine_version        = "5.7"
#   db_subnet_group_name  = aws_db_subnet_group.my_db_subnet_group.name
#   username              = "admin"
#   password              = "Password123"
#   skip_final_snapshot   = true
#   vpc_security_group_ids = [aws_security_group.rds_security_group.id]
# }
