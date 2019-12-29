import Files
import Plot

let html = HTML(
    .head(
        .title("My website"),
        .stylesheet("https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css")
    ),
    .body(
        .div(
            .h1("My website"),
            .p("Writing HTML in Swift is pretty great!")
        )
    )
)

let rendered = html.render()

let file = try Folder.current.createSubfolderIfNeeded(at: "html").createFileIfNeeded(at: "index.html")
try file.write(rendered)
