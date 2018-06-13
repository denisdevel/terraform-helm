provider "helm" {
	kubernetes {}
	}

resource "helm_release" "planner-service" {
    name      = "planner-service"
    chart     = "chartmuseum/planner-service"
    version   = "0.1.0"
}
