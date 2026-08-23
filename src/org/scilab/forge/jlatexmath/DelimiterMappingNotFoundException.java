package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class DelimiterMappingNotFoundException extends JMathTeXException {
    private static final long serialVersionUID = 273456491396361682L;

    public DelimiterMappingNotFoundException(char c2) {
        super("No mapping found for the character '" + c2 + "'! Insert a <Map>-element in 'TeXFormulaSettings.xml'.");
    }
}
