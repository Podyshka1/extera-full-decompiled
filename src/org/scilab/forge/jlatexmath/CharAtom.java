package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class CharAtom extends CharSymbol {

    /* JADX INFO: renamed from: c */
    private final char f934c;
    private boolean mathMode;
    private String textStyle;

    public CharAtom(char c2, String str, boolean z) {
        this.f934c = c2;
        this.textStyle = str;
        this.mathMode = z;
    }

    public CharAtom(char c2, String str) {
        this(c2, str, false);
    }

    public boolean isMathMode() {
        return this.mathMode;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        String textStyle;
        if (this.textStyle == null && (textStyle = teXEnvironment.getTextStyle()) != null) {
            this.textStyle = textStyle;
        }
        boolean smallCap = teXEnvironment.getSmallCap();
        CharBox charBox = new CharBox(getChar(teXEnvironment.getTeXFont(), teXEnvironment.getStyle(), smallCap));
        return (smallCap && Character.isLowerCase(this.f934c)) ? new ScaleBox(charBox, 0.800000011920929d, 0.800000011920929d) : charBox;
    }

    public char getCharacter() {
        return this.f934c;
    }

    private Char getChar(TeXFont teXFont, int i, boolean z) {
        char upperCase = this.f934c;
        if (z && Character.isLowerCase(upperCase)) {
            upperCase = Character.toUpperCase(this.f934c);
        }
        String str = this.textStyle;
        if (str == null) {
            return teXFont.getDefaultChar(upperCase, i);
        }
        return teXFont.getChar(upperCase, str, i);
    }

    @Override // org.scilab.forge.jlatexmath.CharSymbol
    public CharFont getCharFont(TeXFont teXFont) {
        return getChar(teXFont, 0, false).getCharFont();
    }

    public String toString() {
        return "CharAtom: '" + this.f934c + "'";
    }
}
