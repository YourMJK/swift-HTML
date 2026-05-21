//
//  Node.swift
//  swift-HTML
//
//  Created by YourMJK on 21.05.26.
//

import OrderedCollections

extension HTML {
	public class Node {
		public let tag: String
		public var attributes: OrderedDictionary<String, String>
		public var content: [Content]
		let selfClosing: Bool
		var indent: Bool = false
		
		public init(tag: String, attributes: OrderedDictionary<String, String> = [:], content: [Content] = [], selfClosing: Bool = false) {
			self.tag = tag
			self.attributes = attributes
			self.content = content
			self.selfClosing = selfClosing
		}
		
		@discardableResult public func content(_ element: () -> Content) -> Self {
			content.append(element())
			return self
		}
		@discardableResult public func content(_ elements: () -> [Content]) -> Self {
			content.append(contentsOf: elements())
			return self
		}
		
		@discardableResult public func attribute(key: String, value: String) -> Self {
			attributes[key] = value
			return self
		}
		
		@discardableResult public func indent(_ value: Bool = true) -> Self {
			indent = value
			return self
		}
		
	}
}


extension HTML.Node {
	@discardableResult public func id(_ value: String) -> Self { return attribute(key: "id", value: value) }
	@discardableResult public func `class`(_ value: String) -> Self { return attribute(key: "class", value: value) }
	@discardableResult public func src(_ value: String) -> Self { return attribute(key: "src", value: value) }
	@discardableResult public func href(_ value: String) -> Self { return attribute(key: "href", value: value) }
}
