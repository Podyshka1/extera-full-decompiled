package com.google.android.exoplayer2.text.ttml;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Sets;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
final class TextEmphasis {
    public final int markFill;
    public final int markShape;
    public final int position;
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("\\s+");
    private static final ImmutableSet<String> SINGLE_STYLE_VALUES = ImmutableSet.of("auto", "none");
    private static final ImmutableSet<String> MARK_SHAPE_VALUES = ImmutableSet.of("dot", "sesame", "circle");
    private static final ImmutableSet<String> MARK_FILL_VALUES = ImmutableSet.of("filled", "open");
    private static final ImmutableSet<String> POSITION_VALUES = ImmutableSet.of("after", "before", "outside");

    private TextEmphasis(int i, int i2, int i3) {
        this.markShape = i;
        this.markFill = i2;
        this.position = i3;
    }

    public static TextEmphasis parse(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = Ascii.toLowerCase(str.trim());
        if (lowerCase.isEmpty()) {
            return null;
        }
        return parseWords(ImmutableSet.copyOf(TextUtils.split(lowerCase, WHITESPACE_PATTERN)));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TextEmphasis parseWords(ImmutableSet<String> immutableSet) {
        int i;
        Sets.SetView setViewIntersection;
        int i2;
        int iHashCode;
        String str = (String) Iterables.getFirst(Sets.intersection(POSITION_VALUES, immutableSet), "outside");
        int iHashCode2 = str.hashCode();
        int i3 = 1;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                if (iHashCode2 == 92734940 && str.equals("after")) {
                    i = 2;
                }
            } else if (str.equals("outside")) {
                i = -2;
            }
            setViewIntersection = Sets.intersection(SINGLE_STYLE_VALUES, immutableSet);
            int i4 = -1;
            if (setViewIntersection.isEmpty()) {
                String str2 = (String) setViewIntersection.iterator().next();
                int iHashCode3 = str2.hashCode();
                if (iHashCode3 == 3005871) {
                    str2.equals("auto");
                } else if (iHashCode3 == 3387192 && str2.equals("none")) {
                    i4 = 0;
                }
                return new TextEmphasis(i4, 0, i);
            }
            Sets.SetView setViewIntersection2 = Sets.intersection(MARK_FILL_VALUES, immutableSet);
            Sets.SetView setViewIntersection3 = Sets.intersection(MARK_SHAPE_VALUES, immutableSet);
            if (setViewIntersection2.isEmpty() && setViewIntersection3.isEmpty()) {
                return new TextEmphasis(-1, 0, i);
            }
            String str3 = (String) Iterables.getFirst(setViewIntersection2, "filled");
            int iHashCode4 = str3.hashCode();
            if (iHashCode4 == -1274499742) {
                str3.equals("filled");
            } else {
                if (iHashCode4 == 3417674 && str3.equals("open")) {
                    i2 = 2;
                }
                String str4 = (String) Iterables.getFirst(setViewIntersection3, "circle");
                iHashCode = str4.hashCode();
                if (iHashCode != -1360216880) {
                    str4.equals("circle");
                } else if (iHashCode != -905816648) {
                    if (iHashCode == 99657 && str4.equals("dot")) {
                        i3 = 2;
                    }
                } else if (str4.equals("sesame")) {
                    i3 = 3;
                }
                return new TextEmphasis(i3, i2, i);
            }
            i2 = 1;
            String str42 = (String) Iterables.getFirst(setViewIntersection3, "circle");
            iHashCode = str42.hashCode();
            if (iHashCode != -1360216880) {
            }
            return new TextEmphasis(i3, i2, i);
        }
        str.equals("before");
        i = 1;
        setViewIntersection = Sets.intersection(SINGLE_STYLE_VALUES, immutableSet);
        int i42 = -1;
        if (setViewIntersection.isEmpty()) {
        }
    }
}
