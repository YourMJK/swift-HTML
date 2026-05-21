//
//  HTML.swift
//  swift-HTML
//
//  Created by YourMJK on 21.05.26.
//

public enum HTML {
	public static func html() -> Node { Node(tag: "html") }
	public static func head() -> Node { Node(tag: "head") }
	public static func body() -> Node { Node(tag: "body") }
	public static func header() -> Node { Node(tag: "header") }
	public static func footer() -> Node { Node(tag: "footer") }
	public static func main() -> Node { Node(tag: "main") }
	public static func article() -> Node { Node(tag: "article") }
	public static func section() -> Node { Node(tag: "section") }
	public static func table() -> Node { Node(tag: "table") }
	public static func thead() -> Node { Node(tag: "thead") }
	public static func tbody() -> Node { Node(tag: "tbody") }
	public static func tfoot() -> Node { Node(tag: "tfoot") }
	public static func tr() -> Node { Node(tag: "tr", selfClosing: true) }
	public static func th() -> Node { Node(tag: "th", selfClosing: true) }
	public static func td() -> Node { Node(tag: "td", selfClosing: true) }
	public static func br() -> Node { Node(tag: "br", selfClosing: true) }
	public static func hr() -> Node { Node(tag: "hr", selfClosing: true) }
	public static func p() -> Node { Node(tag: "p") }
	public static func b() -> Node { Node(tag: "b") }
	public static func i() -> Node { Node(tag: "i") }
	public static func a() -> Node { Node(tag: "a") }
	public static func img() -> Node { Node(tag: "img", selfClosing: true) }
	public static func input() -> Node { Node(tag: "input", selfClosing: true) }
	public static func div() -> Node { Node(tag: "div") }
	public static func span() -> Node { Node(tag: "span") }
	public static func code() -> Node { Node(tag: "code") }
	public static func pre() -> Node { Node(tag: "pre") }
	public static func ol() -> Node { Node(tag: "ol") }
	public static func ul() -> Node { Node(tag: "ul") }
	public static func li() -> Node { Node(tag: "li") }
	public static func details() -> Node { Node(tag: "details") }
	public static func summary() -> Node { Node(tag: "summary") }
	public static func h(_ n: UInt) -> Node { Node(tag: "h\(n)") }
}
