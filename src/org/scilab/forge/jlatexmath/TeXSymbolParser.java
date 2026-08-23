package org.scilab.forge.jlatexmath;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.DocumentBuilderFactory;
import okhttp3.internal.url._UrlKt;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import ru.noties.jlatexmath.JLatexMathAndroid;

/* JADX INFO: loaded from: classes5.dex */
public class TeXSymbolParser {
    public static final String DELIMITER_ATTR = "del";
    public static final String RESOURCE_NAME = "TeXSymbols.xml";
    public static final String TYPE_ATTR = "type";
    private static Map<String, Integer> typeMappings = new HashMap();
    private Element root;

    public TeXSymbolParser() {
        this(JLatexMathAndroid.getResourceAsStream(RESOURCE_NAME), RESOURCE_NAME);
    }

    public TeXSymbolParser(InputStream inputStream, String str) {
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setIgnoringElementContentWhitespace(true);
            documentBuilderFactoryNewInstance.setIgnoringComments(true);
            this.root = documentBuilderFactoryNewInstance.newDocumentBuilder().parse(inputStream).getDocumentElement();
            setTypeMappings();
        } catch (Exception e) {
            throw new XMLResourceParseException(str, e);
        }
    }

    public Map<String, SymbolAtom> readSymbols() {
        HashMap map = new HashMap();
        NodeList elementsByTagName = this.root.getElementsByTagName("Symbol");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            Element element = (Element) elementsByTagName.item(i);
            String attrValueAndCheckIfNotNull = getAttrValueAndCheckIfNotNull("name", element);
            String attrValueAndCheckIfNotNull2 = getAttrValueAndCheckIfNotNull(TYPE_ATTR, element);
            String attribute = element.getAttribute(DELIMITER_ATTR);
            boolean z = attribute != null && attribute.equals("true");
            Integer num = typeMappings.get(attrValueAndCheckIfNotNull2);
            if (num == null) {
                TeXSymbolParser$$ExternalSyntheticBUOutline0.m885m("has an unknown value '", attrValueAndCheckIfNotNull2, RESOURCE_NAME, "Symbol", TYPE_ATTR);
                return null;
            }
            map.put(attrValueAndCheckIfNotNull, new SymbolAtom(attrValueAndCheckIfNotNull, num.intValue(), z));
        }
        return map;
    }

    private void setTypeMappings() {
        typeMappings.put("ord", 0);
        typeMappings.put("op", 1);
        typeMappings.put("bin", 2);
        typeMappings.put("rel", 3);
        typeMappings.put("open", 4);
        typeMappings.put("close", 5);
        typeMappings.put("punct", 6);
        typeMappings.put("acc", 10);
    }

    private static String getAttrValueAndCheckIfNotNull(String str, Element element) {
        String attribute = element.getAttribute(str);
        if (attribute.equals(_UrlKt.FRAGMENT_ENCODE_SET)) {
            throw new XMLResourceParseException(RESOURCE_NAME, element.getTagName(), str, null);
        }
        return attribute;
    }
}
