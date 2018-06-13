provider "helm" {
	kubernetes {}
	}

resource "helm_release" "mydatabase" {
    name      = "mydatasase"
    chart     = "stable/mariadb"

    set {
        name  = "mariadbUser"
        value = "foo"
    }

    set {
        name = "mariadbPassword"
        value = "qux"
    }
}
