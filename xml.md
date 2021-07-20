<prefix:element attribute_name="value">text</element>

element: defines a tag (can be a self closing tag), contains a text
attribute: name-value pair, @attrib pour chercher dans un xpath

namespace: xmlns="http://" ou xmlns:prefix="http://"
prefix

If the XML input has namespaces, tags and attributes with prefixes in the form prefix:sometag get expanded to {uri}sometag where the prefix is replaced by the full URI. Also, if there is a default namespace, that full URI gets prepended to all of the non-prefixed tags.

XML, XPath, XLink, XQuery, XPointer, XSLT, XSL, XSD, DTD, DOM

https://www.w3schools.com/xml/xsl_functions.asp
https://www.w3schools.com/xml/xsl_elementref.asp

Python: https://docs.python.org/3/library/xml.etree.elementtree.html
elem.tag
elem.attrib
elem.text
elem[i], avec i de 1 a last() ou elem[@attrib] // : all sub elements


<toto>test</toto> : elements are list element.tag -> toto, element.text -> test
id="test" : attributes are dicos

Each node is an element
Each element has a tag
Elements can have attributes within the tags
Elements can have text between opening and closing tags
<element-tag>
     <subElement-tag attribute="value" />
    <subElement-tag>element text</subElement-tag>
</element-tag>
