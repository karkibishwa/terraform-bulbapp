/*data "aws_ecs_task_definition" "default" {
  task_definition = "${aws_ecs_task_definition.default.family}"
}*/
resource "aws_ecs_task_definition" "default" {
    family                = "bulbapp"
    container_definitions = <<DEFINITION
[
  {
    "name": "bulbapp",
    "image": "860155566438.dkr.ecr.us-east-1.amazonaws.com/nginx-proxy:latest",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 0
      }
    ],
    "memory": 512,
    "cpu": 1024
  }
]
DEFINITION
}
