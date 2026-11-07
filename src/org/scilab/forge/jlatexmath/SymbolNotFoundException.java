package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class SymbolNotFoundException extends JMathTeXException {
    private static final long serialVersionUID = -3005021333407670912L;

    public SymbolNotFoundException(String str) {
        super("There's no symbol with the name '" + str + "' defined in 'TeXSymbols.xml'!");
    }
}
