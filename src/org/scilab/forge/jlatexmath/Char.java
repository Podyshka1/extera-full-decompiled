package org.scilab.forge.jlatexmath;

import ru.noties.jlatexmath.awt.Font;

/* JADX INFO: loaded from: classes5.dex */
public class Char {

    /* JADX INFO: renamed from: c */
    private final char f934c;
    private final Font font;
    private final int fontCode;

    /* JADX INFO: renamed from: m */
    private final Metrics f935m;

    public Char(char c2, Font font, int i, Metrics metrics) {
        this.font = font;
        this.fontCode = i;
        this.f934c = c2;
        this.f935m = metrics;
    }

    public CharFont getCharFont() {
        return new CharFont(this.f934c, this.fontCode);
    }

    public char getChar() {
        return this.f934c;
    }

    public Font getFont() {
        return this.font;
    }

    public int getFontCode() {
        return this.fontCode;
    }

    public float getWidth() {
        return this.f935m.getWidth();
    }

    public float getItalic() {
        return this.f935m.getItalic();
    }

    public float getHeight() {
        return this.f935m.getHeight();
    }

    public float getDepth() {
        return this.f935m.getDepth();
    }

    public Metrics getMetrics() {
        return this.f935m;
    }
}
