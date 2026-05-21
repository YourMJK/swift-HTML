//
//  Node.swift
//  swift-HTML
//
//  Created by YourMJK on 21.05.26.
//

import OrderedCollections

extension HTML {
	class Node {
		let tag: String
		var attributes: OrderedDictionary<String, String>
		var content: [Content]
		let selfClosing: Bool
		var indent: Bool = false
		
		init(tag: String, attributes: OrderedDictionary<String, String> = [:], content: [Content] = [], selfClosing: Bool = false) {
			self.tag = tag
			self.attributes = attributes
			self.content = content
			self.selfClosing = selfClosing
		}
		
		@discardableResult func content(_ element: () -> Content) -> Self {
			content.append(element())
			return self
		}
		@discardableResult func content(_ elements: () -> [Content]) -> Self {
			content.append(contentsOf: elements())
			return self
		}
		
		@discardableResult func attribute(key: String, value: String) -> Self {
			attributes[key] = value
			return self
		}
		
		@discardableResult func indent(_ value: Bool = true) -> Self {
			indent = value
			return self
		}
		
	}
}


extension HTML.Node {
	@discardableResult func id(_ value: String) -> Self { return attribute(key: "id", value: value) }
	@discardableResult func `class`(_ value: String) -> Self { return attribute(key: "class", value: value) }
	@discardableResult func src(_ value: String) -> Self { return attribute(key: "src", value: value) }
	@discardableResult func href(_ value: String) -> Self { return attribute(key: "href", value: value) }
}
