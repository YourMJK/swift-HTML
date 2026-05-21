# swift-HTML
A light-weight Swift Package library to easily generate common HTML.

* Simple API with builder patterns
* Dynamic manipulation of node contents
* Serialization with optional indentation

## Example

``` swift
let body = HTML.body().indent().content {
	HTML.a().href("https://example.org").content {
		"Example"
	}
}

// Append additional content to body
body.content {
	HTML.p().content {[
		"Hello",
		HTML.br(),
		"World!"
	]}
}

print(body.serialize())
```

``` html
<body>
	<a href="https://example.org">Example</a>
	<p>Hello<br>World!</p>
</body>
```
