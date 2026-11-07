package org.scilab.forge.jlatexmath;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.CharCompanionObject;
import ru.noties.jlatexmath.awt.Font;

/* JADX INFO: loaded from: classes5.dex */
public class FontInfo {
    public static final int NUMBER_OF_CHAR_CODES = 256;
    private static Map<Integer, FontInfo> fonts = new HashMap();
    private final Object base;
    private int boldId;
    protected final String boldVersion;
    private int[][] extensions;
    private Font font;
    private final int fontId;
    private final String fontName;
    private int itId;
    protected final String itVersion;
    private float[][] metrics;
    private CharFont[] nextLarger;
    private final String path;
    private final float quad;
    private int romanId;
    protected final String romanVersion;
    private final float space;
    private int ssId;
    protected final String ssVersion;
    private int ttId;
    protected final String ttVersion;
    private HashMap<Character, Character> unicode;
    private final float xHeight;
    private final Map<CharCouple, Character> lig = new HashMap();
    private final Map<CharCouple, Float> kern = new HashMap();
    private char skewChar = CharCompanionObject.MAX_VALUE;

    public class CharCouple {
        private final char left;
        private final char right;

        public CharCouple(char c2, char c3) {
            this.left = c2;
            this.right = c3;
        }

        public boolean equals(Object obj) {
            CharCouple charCouple = (CharCouple) obj;
            return this.left == charCouple.left && this.right == charCouple.right;
        }

        public int hashCode() {
            return (this.left + this.right) % 128;
        }
    }

    public FontInfo(int i, Object obj, String str, String str2, int i2, float f, float f2, float f3, String str3, String str4, String str5, String str6, String str7) {
        this.unicode = null;
        this.fontId = i;
        this.base = obj;
        this.path = str;
        this.fontName = str2;
        this.xHeight = f;
        this.space = f2;
        this.quad = f3;
        this.boldVersion = str3;
        this.romanVersion = str4;
        this.ssVersion = str5;
        this.ttVersion = str6;
        this.itVersion = str7;
        if (i2 != 0) {
            this.unicode = new HashMap<>(i2);
        } else {
            i2 = 256;
        }
        this.metrics = new float[i2][];
        this.nextLarger = new CharFont[i2];
        this.extensions = new int[i2][];
        fonts.put(Integer.valueOf(i), this);
    }

    public void addKern(char c2, char c3, float f) {
        this.kern.put(new CharCouple(c2, c3), new Float(f));
    }

    public void addLigature(char c2, char c3, char c4) {
        this.lig.put(new CharCouple(c2, c3), new Character(c4));
    }

    public int[] getExtension(char c2) {
        HashMap<Character, Character> map = this.unicode;
        int[][] iArr = this.extensions;
        if (map == null) {
            return iArr[c2];
        }
        return iArr[map.get(Character.valueOf(c2)).charValue()];
    }

    public float getKern(char c2, char c3, float f) {
        Float f2 = this.kern.get(new CharCouple(c2, c3));
        if (f2 == null) {
            return 0.0f;
        }
        return f2.floatValue() * f;
    }

    public CharFont getLigature(char c2, char c3) {
        Character ch = this.lig.get(new CharCouple(c2, c3));
        if (ch == null) {
            return null;
        }
        return new CharFont(ch.charValue(), this.fontId);
    }

    public float[] getMetrics(char c2) {
        HashMap<Character, Character> map = this.unicode;
        float[][] fArr = this.metrics;
        if (map == null) {
            return fArr[c2];
        }
        return fArr[map.get(Character.valueOf(c2)).charValue()];
    }

    public CharFont getNextLarger(char c2) {
        HashMap<Character, Character> map = this.unicode;
        CharFont[] charFontArr = this.nextLarger;
        if (map == null) {
            return charFontArr[c2];
        }
        return charFontArr[map.get(Character.valueOf(c2)).charValue()];
    }

    public float getQuad(float f) {
        return this.quad * f;
    }

    public char getSkewChar() {
        return this.skewChar;
    }

    public float getSpace(float f) {
        return this.space * f;
    }

    public float getXHeight(float f) {
        return this.xHeight * f;
    }

    public boolean hasSpace() {
        return this.space > 1.0E-7f;
    }

    public void setExtension(char c2, int[] iArr) {
        HashMap<Character, Character> map = this.unicode;
        if (map == null) {
            this.extensions[c2] = iArr;
        } else {
            if (!map.containsKey(Character.valueOf(c2))) {
                char size = (char) this.unicode.size();
                this.unicode.put(Character.valueOf(c2), Character.valueOf(size));
                this.extensions[size] = iArr;
                return;
            }
            this.extensions[this.unicode.get(Character.valueOf(c2)).charValue()] = iArr;
        }
    }

    public void setMetrics(char c2, float[] fArr) {
        HashMap<Character, Character> map = this.unicode;
        if (map == null) {
            this.metrics[c2] = fArr;
        } else {
            if (!map.containsKey(Character.valueOf(c2))) {
                char size = (char) this.unicode.size();
                this.unicode.put(Character.valueOf(c2), Character.valueOf(size));
                this.metrics[size] = fArr;
                return;
            }
            this.metrics[this.unicode.get(Character.valueOf(c2)).charValue()] = fArr;
        }
    }

    public void setNextLarger(char c2, char c3, int i) {
        HashMap<Character, Character> map = this.unicode;
        if (map == null) {
            this.nextLarger[c2] = new CharFont(c3, i);
        } else {
            if (!map.containsKey(Character.valueOf(c2))) {
                char size = (char) this.unicode.size();
                this.unicode.put(Character.valueOf(c2), Character.valueOf(size));
                this.nextLarger[size] = new CharFont(c3, i);
                return;
            }
            this.nextLarger[this.unicode.get(Character.valueOf(c2)).charValue()] = new CharFont(c3, i);
        }
    }

    public void setSkewChar(char c2) {
        this.skewChar = c2;
    }

    public int getId() {
        return this.fontId;
    }

    public int getBoldId() {
        return this.boldId;
    }

    public int getRomanId() {
        return this.romanId;
    }

    public int getTtId() {
        return this.ttId;
    }

    public int getItId() {
        return this.itId;
    }

    public int getSsId() {
        return this.ssId;
    }

    public void setSsId(int i) {
        if (i == -1) {
            i = this.fontId;
        }
        this.ssId = i;
    }

    public void setTtId(int i) {
        if (i == -1) {
            i = this.fontId;
        }
        this.ttId = i;
    }

    public void setItId(int i) {
        if (i == -1) {
            i = this.fontId;
        }
        this.itId = i;
    }

    public void setRomanId(int i) {
        if (i == -1) {
            i = this.fontId;
        }
        this.romanId = i;
    }

    public void setBoldId(int i) {
        if (i == -1) {
            i = this.fontId;
        }
        this.boldId = i;
    }

    public Font getFont() {
        if (this.font == null) {
            Object obj = this.base;
            String str = this.path;
            if (obj == null) {
                this.font = DefaultTeXFontParser.createFont(str);
            } else {
                this.font = DefaultTeXFontParser.createFont(str);
            }
        }
        return this.font;
    }

    public static Font getFont(int i) {
        return fonts.get(Integer.valueOf(i)).getFont();
    }
}
