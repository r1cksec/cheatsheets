using System;
using System.Xml;

XmlDocument xmlDoc = new XmlDocument();
xmlDoc.Load("file.xml");

// select single element (first one if multiple exists)
XmlNode singleNode = xmlDoc.SelectSingleNode("//singleNode");

// select all test elements
XmlNodeList testNodes = xmlDoc.SelectNodes("//test");

foreach (XmlNode testNode in testNodes)
{
    // read element attributes
    string attr1 = testNode.Attributes["attribute1"].Value;
    string attr2 = testNode.Attributes["attribute2"].Value;

    // create new element
    XmlElement newElement = xmlDoc.CreateElement("newElement");
    
    // add attributes to element
    XmlAttribute newAttr1 = xmlDoc.CreateAttribute("newAttribute1");
    newAttr1.Value = "value1";
    newElement.Attributes.Append(newAttr1);
    
    XmlAttribute newAttr1 = xmlDoc.CreateAttribute("newAttribute2");
    newAttr2.Value = "value3";
    newElement.Attributes.Append(newAttr2);
    
    // append new element as a child of the current node
    testNode.AppendChild(newElement);
}

// print XML
Console.WriteLine(xmlDoc.OuterXml);

