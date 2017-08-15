package main

import (
    "os"
    "fmt"
    "log"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, you")
}

func main() {
    http.HandleFunc("/", handler)
    log.Fatal(http.ListenAndServe(":" + os.Getenv("PORT"), nil))
}
