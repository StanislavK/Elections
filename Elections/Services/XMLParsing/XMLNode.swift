import Foundation

class XMLNode {
    let tag: String
    var data: String
    let attributes: [String: String]
    var childNodes: [XMLNode]

    init(
        tag: String,
        data: String,
        attributes: [String: String],
        childNodes: [XMLNode]
    ) {
        self.tag = tag
        self.data = data
        self.attributes = attributes
        self.childNodes = childNodes
    }

    func getAtribute(_ name: String) -> String? {
        attributes[name]
    }

    func getElementsByTagName(_ name: String) -> [XMLNode] {
        var results = [XMLNode]()

        for node in childNodes {
            if node.tag == name {
                results.append(node)
            }

            results += node.getElementsByTagName(name)
        }

        return results
    }
}
