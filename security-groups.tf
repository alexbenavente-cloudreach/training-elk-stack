resource "aws_security_group" "elk_server_sg" {
  name        = "elk_server_sg"
  description = "Allow access to this server"
  vpc_id      = data.aws_vpc.main_vpc.id

  # INBOUND CONNECTIONS

  # ElasticSearch Port
  ingress {
    description = "Allow elasticsearch traffic"
    from_port   = 9200
    to_port     = 9200
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Kibana Port
  ingress {
    description = "Allow kibana traffic"
    from_port   = 5601
    to_port     = 5601
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Logstash Port
  ingress {
    description = "Allow logstash traffic"
    from_port   = 5043
    to_port     = 5044
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # SSH Port
  ingress {
    description = "Allow ssh traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # OUTBOUND CONNECTIONS
  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
}
