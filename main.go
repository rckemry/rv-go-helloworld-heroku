package main

import (
    "os"
    "fmt"
    "log"
    "net/http"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Hello, you", )
    })

    log.Fatal(http.ListenAndServe(":" + os.Getenv("8080"), nil))

}
