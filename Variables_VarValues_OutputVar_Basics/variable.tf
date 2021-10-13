variable "stringvar" {
    type = string
}

variable "numbervar" {
    type = number
}

variable  "listExample" {
    type = list(string)
}

variable  "setExample" {
    type = set(string)
}

variable  "simpleMapExample" {
    type = map(string)
}

variable  "objectExample" {
    type = object({
        cidr_block = string
        region = string
    })
}

variable  "mapobjectExample" {
    type = map(object({
        cidr_block = string
        region = string
    }))
}
