package org.scilab.forge.jlatexmath;

import ru.noties.jlatexmath.awt.Font;

/* JADX INFO: loaded from: classes5.dex */
public class Char {

    /* JADX INFO: renamed from: c */
    private final char f776c;
    private final Font font;
    private final int fontCode;

    /* JADX INFO: renamed from: m */
    private final Metrics f777m;

    public Char(char c2, Font font, int i, Metrics metrics) {
        this.font = font;
        this.fontCode = i;
        this.f776c = c2;
        this.f777m = metrics;
    }

    public CharFont getCharFont() {
        return new CharFont(this.f776c, this.fontCode);
    }

    public char getChar() {
        return this.f776c;
    }

    public Font getFont() {
        return this.font;
    }

    public int getFontCode() {
        return this.fontCode;
    }

    public float getWidth() {
        return this.f777m.getWidth();
    }

    public float getItalic() {
        return this.f777m.getItalic();
    }

    public float getHeight() {
        return this.f777m.getHeight();
    }

    public float getDepth() {
        return this.f777m.getDepth();
    }

    public Metrics getMetrics() {
        return this.f777m;
    }
}
