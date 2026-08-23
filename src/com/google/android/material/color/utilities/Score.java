package com.google.android.material.color.utilities;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Score {
    private static final int BLUE_500 = -12417548;
    private static final double CUTOFF_CHROMA = 5.0d;
    private static final double CUTOFF_EXCITED_PROPORTION = 0.01d;
    private static final int MAX_COLOR_COUNT = 4;
    private static final double TARGET_CHROMA = 48.0d;
    private static final double WEIGHT_CHROMA_ABOVE = 0.3d;
    private static final double WEIGHT_CHROMA_BELOW = 0.1d;
    private static final double WEIGHT_PROPORTION = 0.7d;

    private Score() {
    }

    public static List<Integer> score(Map<Integer, Integer> map) {
        return score(map, 4, BLUE_500, true);
    }

    public static List<Integer> score(Map<Integer, Integer> map, int i) {
        return score(map, i, BLUE_500, true);
    }

    public static List<Integer> score(Map<Integer, Integer> map, int i, int i2) {
        return score(map, i, i2, true);
    }

    public static List<Integer> score(Map<Integer, Integer> map, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[360];
        double d = 0.0d;
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            Hct hctFromInt = Hct.fromInt(entry.getKey().intValue());
            arrayList.add(hctFromInt);
            int iFloor = (int) Math.floor(hctFromInt.getHue());
            int iIntValue = entry.getValue().intValue();
            iArr[iFloor] = iArr[iFloor] + iIntValue;
            d += (double) iIntValue;
        }
        double[] dArr = new double[360];
        int i3 = 0;
        for (int i4 = 0; i4 < 360; i4++) {
            double d2 = ((double) iArr[i4]) / d;
            for (int i5 = i4 - 14; i5 < i4 + 16; i5++) {
                int iSanitizeDegreesInt = MathUtils.sanitizeDegreesInt(i5);
                dArr[iSanitizeDegreesInt] = dArr[iSanitizeDegreesInt] + d2;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            Hct hct = (Hct) obj;
            double d3 = dArr[MathUtils.sanitizeDegreesInt((int) Math.round(hct.getHue()))];
            if (!z || (hct.getChroma() >= CUTOFF_CHROMA && d3 > CUTOFF_EXCITED_PROPORTION)) {
                arrayList2.add(new ScoredHCT(hct, (d3 * 100.0d * WEIGHT_PROPORTION) + ((hct.getChroma() - TARGET_CHROMA) * (hct.getChroma() < TARGET_CHROMA ? WEIGHT_CHROMA_BELOW : WEIGHT_CHROMA_ABOVE))));
            }
        }
        Collections.sort(arrayList2, new ScoredComparator());
        ArrayList arrayList3 = new ArrayList();
        for (int i7 = 90; i7 >= 15; i7--) {
            arrayList3.clear();
            int size2 = arrayList2.size();
            int i8 = 0;
            while (i8 < size2) {
                Object obj2 = arrayList2.get(i8);
                i8++;
                Hct hct2 = ((ScoredHCT) obj2).hct;
                int size3 = arrayList3.size();
                int i9 = 0;
                while (true) {
                    if (i9 >= size3) {
                        arrayList3.add(hct2);
                        break;
                    }
                    Object obj3 = arrayList3.get(i9);
                    i9++;
                    if (MathUtils.differenceDegrees(hct2.getHue(), ((Hct) obj3).getHue()) < i7) {
                        break;
                    }
                }
                if (arrayList3.size() >= i) {
                    break;
                }
            }
            if (arrayList3.size() >= i) {
                break;
            }
        }
        ArrayList arrayList4 = new ArrayList();
        if (arrayList3.isEmpty()) {
            arrayList4.add(Integer.valueOf(i2));
            return arrayList4;
        }
        int size4 = arrayList3.size();
        while (i3 < size4) {
            Object obj4 = arrayList3.get(i3);
            i3++;
            arrayList4.add(Integer.valueOf(((Hct) obj4).toInt()));
        }
        return arrayList4;
    }

    private static class ScoredHCT {
        public final Hct hct;
        public final double score;

        public ScoredHCT(Hct hct, double d) {
            this.hct = hct;
            this.score = d;
        }
    }

    private static class ScoredComparator implements Comparator<ScoredHCT> {
        @Override // java.util.Comparator
        public int compare(ScoredHCT scoredHCT, ScoredHCT scoredHCT2) {
            return Double.compare(scoredHCT2.score, scoredHCT.score);
        }
    }
}
