package org.telegram.utils.code.highlight;

import androidx.mediarouter.media.GlobalMediaRouter;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.telegram.utils.code.highlight.PrismaHighlighter;

/* JADX INFO: loaded from: classes8.dex */
public final class PrismaTokenStyles {
    private static final Map<String, Integer> DEFAULT_STYLES = createStyles();
    private final int[] nameStyles;

    public static int legacyGroup(int i) {
        int i2 = i & 255;
        switch (i2) {
            case 8:
            case 18:
                return 1;
            case 9:
            case 10:
            case 14:
            case 15:
                return 3;
            case 11:
            case 13:
                return 7;
            case 12:
            case 16:
            case 17:
            case 19:
                return 4;
            case 20:
                return 6;
            case 21:
                return 2;
            default:
                return i2;
        }
    }

    public PrismaTokenStyles(String[] strArr) {
        this.nameStyles = new int[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            int iIntValue = 0;
            for (String str : strArr[i].split("\\s+")) {
                Integer num = DEFAULT_STYLES.get(str);
                if (num != null) {
                    iIntValue = ((iIntValue & 255) == 0 ? iIntValue | (num.intValue() & 255) : iIntValue) | (num.intValue() & (-256));
                }
            }
            this.nameStyles[i] = iIntValue;
        }
    }

    private static Map<String, Integer> createStyles() {
        HashMap map = new HashMap();
        add(map, 1, "keyword");
        add(map, 2, "operator", "entity");
        add(map, 3, "constant", "boolean");
        add(map, 4, "string", "string-literal", "char", "template-string");
        add(map, 5, "number");
        add(map, 6, "comment", "block-comment", "comment-multiline", "prolog", "doctype", "cdata");
        add(map, 7, "function", "function-definition", "function-variable", "function-name");
        add(map, 8, "builtin", "type");
        add(map, 9, "class-name");
        add(map, 10, "property");
        add(map, 11, "attr-name");
        add(map, 12, "attr-value");
        add(map, 13, PluginsConstants.Settings.TYPE_SELECTOR);
        add(map, 14, "tag");
        add(map, 15, "symbol");
        add(map, 16, "regex");
        add(map, 17, "url");
        add(map, 18, "atrule");
        add(map, 19, "inserted");
        add(map, 20, "deleted");
        add(map, 21, "punctuation");
        add(map, 256, "bold");
        add(map, 512, "italic");
        add(map, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED, "important");
        return map;
    }

    private static void add(Map<String, Integer> map, int i, String... strArr) {
        for (String str : strArr) {
            map.put(str, Integer.valueOf(i));
        }
    }

    public int[] resolve(PrismaHighlighter.Tokenization tokenization) {
        int size = tokenization.size();
        if (size == 0) {
            return new int[0];
        }
        int[] iArr = new int[size];
        int[] iArr2 = new int[size];
        int[] iArr3 = new int[size];
        RangeBuilder rangeBuilder = new RangeBuilder();
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            int iStart = tokenization.start(i2);
            int iEnd = tokenization.end(i2);
            while (i >= 0) {
                int i4 = iArr2[i];
                if (i4 > iStart) {
                    break;
                }
                rangeBuilder.add(i3, i4, iArr3[i]);
                i3 = iArr2[i];
                i--;
            }
            if (i >= 0) {
                rangeBuilder.add(i3, iStart, iArr3[i]);
            }
            int i5 = tokenization.parent(i2) < 0 ? 0 : iArr[tokenization.parent(i2)];
            int i6 = this.nameStyles[tokenization.typeId(i2)];
            int i7 = this.nameStyles[tokenization.aliasId(i2)];
            int i8 = i7 & 255;
            if (i8 == 0) {
                i8 = i6 & 255;
            }
            if (i8 == 0) {
                i8 = i5 & 255;
            }
            int i9 = ((i5 | i6 | i7) & (-256)) | i8;
            iArr[i2] = i9;
            i++;
            iArr2[i] = iEnd;
            iArr3[i] = i9;
            i2++;
            i3 = iStart;
        }
        while (i >= 0) {
            rangeBuilder.add(i3, iArr2[i], iArr3[i]);
            i3 = iArr2[i];
            i--;
        }
        return rangeBuilder.finish();
    }

    public static final class RangeBuilder {
        private int size;
        private int[] values;

        private RangeBuilder() {
            this.values = new int[48];
        }

        public void add(int i, int i2, int i3) {
            if (i3 == 0 || i >= i2) {
                return;
            }
            int i4 = this.size;
            if (i4 >= 3) {
                int[] iArr = this.values;
                if (iArr[i4 - 1] == i3 && iArr[i4 - 2] == i) {
                    iArr[i4 - 2] = i2;
                    return;
                }
            }
            int i5 = i4 + 3;
            int[] iArr2 = this.values;
            if (i5 > iArr2.length) {
                this.values = Arrays.copyOf(iArr2, iArr2.length * 2);
            }
            int[] iArr3 = this.values;
            int i6 = this.size;
            int i7 = i6 + 1;
            this.size = i7;
            iArr3[i6] = i;
            int i8 = i6 + 2;
            this.size = i8;
            iArr3[i7] = i2;
            this.size = i6 + 3;
            iArr3[i8] = i3;
        }

        public int[] finish() {
            return Arrays.copyOf(this.values, this.size);
        }
    }
}
