package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class SymbolMappingNotFoundException extends JMathTeXException {
    private static final long serialVersionUID = 2659192520874275262L;

    public SymbolMappingNotFoundException(String str) {
        super("No mapping found for the symbol '" + str + "'! Insert a <SymbolMapping>-element in 'DefaultTeXFont.xml'.");
    }
}
