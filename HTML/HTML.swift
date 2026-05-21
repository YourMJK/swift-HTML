//
//  HTML.swift
//  swift-HTML
//
//  Created by YourMJK on 21.05.26.
//

enum HTML {
	static func html() -> Node { Node(tag: "html") }
	static func head() -> Node { Node(tag: "head") }
	static func body() -> Node { Node(tag: "body") }
	static func header() -> Node { Node(tag: "header") }
	static func footer() -> Node { Node(tag: "footer") }
	static func main() -> Node { Node(tag: "main") }
	static func article() -> Node { Node(tag: "article") }
	static func section() -> Node { Node(tag: "section") }
	static func table() -> Node { Node(tag: "table") }
	static func thead() -> Node { Node(tag: "thead") }
	static func tbody() -> Node { Node(tag: "tbody") }
	static func tfoot() -> Node { Node(tag: "tfoot") }
	static func tr() -> Node { Node(tag: "tr", selfClosing: true) }
	static func th() -> Node { Node(tag: "th", selfClosing: true) }
	static func td() -> Node { Node(tag: "td", selfClosing: true) }
	static func br() -> Node { Node(tag: "br", selfClosing: true) }
	static func hr() -> Node { Node(tag: "hr", selfClosing: true) }
	static func p() -> Node { Node(tag: "p") }
	static func b() -> Node { Node(tag: "b") }
	static func i() -> Node { Node(tag: "i") }
	static func a() -> Node { Node(tag: "a") }
	static func img() -> Node { Node(tag: "img", selfClosing: true) }
	static func input() -> Node { Node(tag: "input", selfClosing: true) }
	static func div() -> Node { Node(tag: "div") }
	static func span() -> Node { Node(tag: "span") }
	static func code() -> Node { Node(tag: "code") }
	static func pre() -> Node { Node(tag: "pre") }
	static func ol() -> Node { Node(tag: "ol") }
	static func ul() -> Node { Node(tag: "ul") }
	static func li() -> Node { Node(tag: "li") }
	static func details() -> Node { Node(tag: "details") }
	static func summary() -> Node { Node(tag: "summary") }
	static func h(_ n: UInt) -> Node { Node(tag: "h\(n)") }
}
