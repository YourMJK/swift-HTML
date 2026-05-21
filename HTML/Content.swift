//
//  Content.swift
//  swift-HTML
//
//  Created by YourMJK on 21.05.26.
//

extension HTML {
	public protocol Content {
		func serialize(into result: inout String, indentation: String)
	}
}


extension String: HTML.Content {
	public func serialize(into result: inout String, indentation: String) {
		result.append(self)
	}
}


extension HTML.Node: HTML.Content {
	
	private var openingTag: String {
		let suffix: String
		if attributes.isEmpty {
			suffix = ""
		} else {
			let pairs = attributes.map {
				"\($0.key)=\"\($0.value)\""
			}
			suffix = " \(pairs.joined(separator: " "))"
		}
		return "<\(tag)\(suffix)>"
	}
	private var closingTag: String {
		"</\(tag)>"
	}
	
	public func serialize(into result: inout String, indentation: String = "") {
		result.append(openingTag)
		
		if content.isEmpty && selfClosing { return }
		if indent {
			let nextIndentation = "\(indentation)\t"
			content.forEach {
				result.append("\n\(nextIndentation)")
				$0.serialize(into: &result, indentation: nextIndentation)
			}
			result.append("\n\(indentation)")
		} else {
			content.forEach {
				$0.serialize(into: &result, indentation: indentation)
			}
		}
		
		result.append(closingTag)
	}
	
	public func serialize(indentation: String = "") -> String {
		var result = ""
		serialize(into: &result, indentation: indentation)
		return result
	}
	
}
