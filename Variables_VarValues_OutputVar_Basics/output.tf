output "stringvar" {
    value = var.stringvar
}

output "numbervar" {
    value = var.numbervar
}

output "listvar" {
    value = var.listExample[1]
}

output "setExample" {
    value = var.setExample
    
}

output "op-map" {
    value= var.simpleMapExample
}
output "op-object" {
    value = var.objectExample
}

output "op-mapobject" {
    value = var.mapobjectExample
}
output "op-local" {
    value = local.a
}