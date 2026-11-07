package org.scilab.forge.jlatexmath;

import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import ru.noties.jlatexmath.awt.Color;

/* JADX INFO: loaded from: classes5.dex */
public class TeXFormulaParser {
    private static final String ARG_OBJ_ATTR = "formula";
    private static final String ARG_VAL_ATTR = "value";
    private static final int COMMAND = 0;
    private static final String RETURN_EL = "Return";
    private static final int TEXFORMULA = 1;
    private static Map<String, Class<?>> classMappings;
    private final Map<String, ActionParser> actionParsers;
    private final Map<String, ArgumentValueParser> argValueParsers;
    private final Element formula;
    private final String formulaName;
    private Object result;
    private final Map<String, MacroInfo> tempCommands;
    private final Map<String, TeXFormula> tempFormulas;
    private int type;

    public interface ActionParser {
        void parse(Element element);
    }

    public interface ArgumentValueParser {
        Object parseValue(String str, String str2);
    }

    public class MethodInvocationParser implements ActionParser {
        public MethodInvocationParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ActionParser
        public void parse(Element element) {
            String attrValueAndCheckIfNotNull = TeXFormulaParser.getAttrValueAndCheckIfNotNull("name", element);
            String attrValueAndCheckIfNotNull2 = TeXFormulaParser.getAttrValueAndCheckIfNotNull(TeXFormulaParser.ARG_OBJ_ATTR, element);
            Object obj = TeXFormulaParser.this.tempFormulas.get(attrValueAndCheckIfNotNull2);
            if (obj == null) {
                TeXSymbolParser$$ExternalSyntheticBUOutline0.m1029m("has an unknown temporary TeXFormula name as value : '", attrValueAndCheckIfNotNull2, PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", TeXFormulaParser.ARG_OBJ_ATTR);
                return;
            }
            NodeList elementsByTagName = element.getElementsByTagName("Argument");
            try {
                TeXFormula.class.getMethod(attrValueAndCheckIfNotNull, TeXFormulaParser.getArgumentClasses(elementsByTagName)).invoke((TeXFormula) obj, TeXFormulaParser.this.getArgumentValues(elementsByTagName));
            } catch (Exception e) {
                throw new XMLResourceParseException("Error invoking the method '" + attrValueAndCheckIfNotNull + "' on the temporary TeXFormula '" + attrValueAndCheckIfNotNull2 + "' while constructing the predefined TeXFormula '" + TeXFormulaParser.this.formulaName + "'!\n" + e.toString());
            }
        }
    }

    public class CreateTeXFormulaParser implements ActionParser {
        public CreateTeXFormulaParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ActionParser
        public void parse(Element element) {
            String attrValueAndCheckIfNotNull = TeXFormulaParser.getAttrValueAndCheckIfNotNull("name", element);
            NodeList elementsByTagName = element.getElementsByTagName("Argument");
            try {
                TeXFormulaParser.this.tempFormulas.put(attrValueAndCheckIfNotNull, (TeXFormula) TeXFormula.class.getConstructor(TeXFormulaParser.getArgumentClasses(elementsByTagName)).newInstance(TeXFormulaParser.this.getArgumentValues(elementsByTagName)));
            } catch (Exception e) {
                throw new XMLResourceParseException("Error creating the temporary TeXFormula '" + attrValueAndCheckIfNotNull + "' while constructing the predefined TeXFormula '" + TeXFormulaParser.this.formulaName + "'!\n" + e.toString());
            }
        }
    }

    public class CreateCommandParser implements ActionParser {
        public CreateCommandParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ActionParser
        public void parse(Element element) {
            String attrValueAndCheckIfNotNull = TeXFormulaParser.getAttrValueAndCheckIfNotNull("name", element);
            NodeList elementsByTagName = element.getElementsByTagName("Argument");
            Class[] argumentClasses = TeXFormulaParser.getArgumentClasses(elementsByTagName);
            Object[] argumentValues = TeXFormulaParser.this.getArgumentValues(elementsByTagName);
            try {
                TeXFormulaParser.this.tempCommands.put(attrValueAndCheckIfNotNull, (MacroInfo) MacroInfo.class.getConstructor(argumentClasses).newInstance(argumentValues));
            } catch (IllegalArgumentException unused) {
                String str = "IllegalArgumentException:\nClassLoader to load this class (TeXFormulaParser): " + getClass().getClassLoader() + "\n";
                for (Class cls : argumentClasses) {
                    str = str + "Created class: " + cls + " loaded with the ClassLoader: " + cls.getClassLoader() + "\n";
                }
                for (Object obj : argumentValues) {
                    str = str + "Created object: " + obj + "\n";
                }
                throw new XMLResourceParseException("Error creating the temporary command '" + attrValueAndCheckIfNotNull + "' while constructing the predefined command '" + TeXFormulaParser.this.formulaName + "'!\n" + str);
            } catch (Exception e) {
                throw new XMLResourceParseException("Error creating the temporary command '" + attrValueAndCheckIfNotNull + "' while constructing the predefined command '" + TeXFormulaParser.this.formulaName + "'!\n" + e.toString());
            }
        }
    }

    public class FloatValueParser implements ArgumentValueParser {
        public FloatValueParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ArgumentValueParser
        public Object parseValue(String str, String str2) {
            TeXFormulaParser.checkNullValue(str, str2);
            try {
                return new Float(Float.parseFloat(str));
            } catch (NumberFormatException e) {
                throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", TeXFormulaParser.ARG_VAL_ATTR, "has an invalid '" + str2 + "'-value : '" + str + "'!", e);
            }
        }
    }

    public class CharValueParser implements ArgumentValueParser {
        public CharValueParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ArgumentValueParser
        public Object parseValue(String str, String str2) {
            TeXFormulaParser.checkNullValue(str, str2);
            if (str.length() == 1) {
                return new Character(str.charAt(0));
            }
            throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", TeXFormulaParser.ARG_VAL_ATTR, "must have a value that consists of exactly 1 character!");
        }
    }

    public class BooleanValueParser implements ArgumentValueParser {
        public BooleanValueParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ArgumentValueParser
        public Object parseValue(String str, String str2) {
            TeXFormulaParser.checkNullValue(str, str2);
            if ("true".equals(str)) {
                return Boolean.TRUE;
            }
            if ("false".equals(str)) {
                return Boolean.FALSE;
            }
            throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", TeXFormulaParser.ARG_VAL_ATTR, "has an invalid '" + str2 + "'-value : '" + str + "'!");
        }
    }

    public class IntValueParser implements ArgumentValueParser {
        public IntValueParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ArgumentValueParser
        public Object parseValue(String str, String str2) {
            TeXFormulaParser.checkNullValue(str, str2);
            try {
                return new Float(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", TeXFormulaParser.ARG_VAL_ATTR, "has an invalid '" + str2 + "'-value : '" + str + "'!", e);
            }
        }
    }

    public class ReturnParser implements ActionParser {
        public ReturnParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ActionParser
        public void parse(Element element) {
            String attrValueAndCheckIfNotNull = TeXFormulaParser.getAttrValueAndCheckIfNotNull("name", element);
            int i = TeXFormulaParser.this.type;
            TeXFormulaParser teXFormulaParser = TeXFormulaParser.this;
            Object obj = (i == 0 ? teXFormulaParser.tempCommands : teXFormulaParser.tempFormulas).get(attrValueAndCheckIfNotNull);
            if (obj == null) {
                throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, TeXFormulaParser.RETURN_EL, "name", "contains an unknown temporary TeXFormula variable name '" + attrValueAndCheckIfNotNull + "' for the predefined TeXFormula '" + TeXFormulaParser.this.formulaName + "'!");
            }
            TeXFormulaParser.this.result = obj;
        }
    }

    public class StringValueParser implements ArgumentValueParser {
        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ArgumentValueParser
        public Object parseValue(String str, String str2) {
            return str;
        }

        public StringValueParser() {
        }
    }

    public class TeXFormulaValueParser implements ArgumentValueParser {
        public TeXFormulaValueParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ArgumentValueParser
        public Object parseValue(String str, String str2) {
            if (str == null) {
                return null;
            }
            Object obj = TeXFormulaParser.this.tempFormulas.get(str);
            if (obj == null) {
                TeXSymbolParser$$ExternalSyntheticBUOutline0.m1029m("has an unknown temporary TeXFormula name as value : '", str, PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", TeXFormulaParser.ARG_VAL_ATTR);
                return null;
            }
            return (TeXFormula) obj;
        }
    }

    public class TeXConstantsValueParser implements ArgumentValueParser {
        public TeXConstantsValueParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ArgumentValueParser
        public Object parseValue(String str, String str2) {
            TeXFormulaParser.checkNullValue(str, str2);
            try {
                return Integer.valueOf(TeXConstants.class.getDeclaredField(str).getInt(null));
            } catch (Exception e) {
                throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", TeXFormulaParser.ARG_VAL_ATTR, "has an unknown constant name as value : '" + str + "'!", e);
            }
        }
    }

    public class ColorConstantValueParser implements ArgumentValueParser {
        public ColorConstantValueParser() {
        }

        @Override // org.scilab.forge.jlatexmath.TeXFormulaParser.ArgumentValueParser
        public Object parseValue(String str, String str2) {
            TeXFormulaParser.checkNullValue(str, str2);
            try {
                return Color.class.getDeclaredField(str).get(null);
            } catch (Exception e) {
                throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", TeXFormulaParser.ARG_VAL_ATTR, "has an unknown color constant name as value : '" + str + "'!", e);
            }
        }
    }

    static {
        HashMap map = new HashMap();
        classMappings = map;
        Class<?> cls = Integer.TYPE;
        map.put("TeXConstants", cls);
        classMappings.put("TeXFormula", TeXFormula.class);
        classMappings.put("String", String.class);
        classMappings.put("float", Float.TYPE);
        classMappings.put("int", cls);
        classMappings.put("boolean", Boolean.TYPE);
        classMappings.put("char", Character.TYPE);
        classMappings.put("ColorConstant", Color.class);
    }

    public TeXFormulaParser(String str, Element element, String str2) {
        HashMap map = new HashMap();
        this.argValueParsers = map;
        HashMap map2 = new HashMap();
        this.actionParsers = map2;
        this.tempFormulas = new HashMap();
        this.tempCommands = new HashMap();
        this.result = new Object();
        this.formulaName = str;
        this.formula = element;
        this.type = !"Command".equals(str2) ? 1 : 0;
        if ("Command".equals(str2)) {
            map2.put("CreateCommand", new CreateCommandParser());
        } else {
            map2.put("CreateTeXFormula", new CreateTeXFormulaParser());
        }
        map2.put("MethodInvocation", new MethodInvocationParser());
        map2.put(RETURN_EL, new ReturnParser());
        map.put("TeXConstants", new TeXConstantsValueParser());
        map.put("TeXFormula", new TeXFormulaValueParser());
        map.put("String", new StringValueParser());
        map.put("float", new FloatValueParser());
        map.put("int", new IntValueParser());
        map.put("boolean", new BooleanValueParser());
        map.put("char", new CharValueParser());
        map.put("ColorConstant", new ColorConstantValueParser());
    }

    public Object parse() {
        NodeList childNodes = this.formula.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() != 3) {
                Element element = (Element) nodeItem;
                ActionParser actionParser = this.actionParsers.get(element.getTagName());
                if (actionParser != null) {
                    actionParser.parse(element);
                }
            }
        }
        return this.result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] getArgumentValues(NodeList nodeList) {
        Object[] objArr = new Object[nodeList.getLength()];
        int i = 0;
        for (int i2 = 0; i2 < nodeList.getLength(); i2++) {
            Element element = (Element) nodeList.item(i2);
            String attrValueAndCheckIfNotNull = getAttrValueAndCheckIfNotNull("type", element);
            objArr[i] = this.argValueParsers.get(attrValueAndCheckIfNotNull).parseValue(element.getAttribute(ARG_VAL_ATTR), attrValueAndCheckIfNotNull);
            i++;
        }
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Class<?>[] getArgumentClasses(NodeList nodeList) {
        Class<?>[] clsArr = new Class[nodeList.getLength()];
        int i = 0;
        for (int i2 = 0; i2 < nodeList.getLength(); i2++) {
            Class<?> cls = classMappings.get(getAttrValueAndCheckIfNotNull("type", (Element) nodeList.item(i2)));
            if (cls == null) {
                throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", "type", "has an invalid class name value!");
            }
            clsArr[i] = cls;
            i++;
        }
        return clsArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkNullValue(String str, String str2) {
        if (str.equals(_UrlKt.FRAGMENT_ENCODE_SET)) {
            TeXSymbolParser$$ExternalSyntheticBUOutline0.m1029m("is required for an argument of type '", str2, PredefinedTeXFormulaParser.RESOURCE_NAME, "Argument", ARG_VAL_ATTR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getAttrValueAndCheckIfNotNull(String str, Element element) {
        String attribute = element.getAttribute(str);
        if (attribute.equals(_UrlKt.FRAGMENT_ENCODE_SET)) {
            throw new XMLResourceParseException(PredefinedTeXFormulaParser.RESOURCE_NAME, element.getTagName(), str, null);
        }
        return attribute;
    }
}
