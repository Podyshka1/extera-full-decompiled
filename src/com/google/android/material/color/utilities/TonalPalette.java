package com.google.android.material.color.utilities;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class TonalPalette {
    Map<Integer, Integer> cache = new HashMap();
    double chroma;
    double hue;
    Hct keyColor;

    public static TonalPalette fromInt(int i) {
        return fromHct(Hct.fromInt(i));
    }

    public static TonalPalette fromHct(Hct hct) {
        return new TonalPalette(hct.getHue(), hct.getChroma(), hct);
    }

    public static TonalPalette fromHueAndChroma(double d, double d2) {
        return new TonalPalette(d, d2, new KeyColor(d, d2).create());
    }

    private TonalPalette(double d, double d2, Hct hct) {
        this.hue = d;
        this.chroma = d2;
        this.keyColor = hct;
    }

    public int tone(int i) {
        Integer numValueOf = this.cache.get(Integer.valueOf(i));
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(Hct.from(this.hue, this.chroma, i).toInt());
            this.cache.put(Integer.valueOf(i), numValueOf);
        }
        return numValueOf.intValue();
    }

    public Hct getHct(double d) {
        return Hct.from(this.hue, this.chroma, d);
    }

    public double getChroma() {
        return this.chroma;
    }

    public double getHue() {
        return this.hue;
    }

    public Hct getKeyColor() {
        return this.keyColor;
    }

    public static final class KeyColor {
        private static final double MAX_CHROMA_VALUE = 200.0d;
        private final Map<Integer, Double> chromaCache = new HashMap();
        private final double hue;
        private final double requestedChroma;

        public KeyColor(double d, double d2) {
            this.hue = d;
            this.requestedChroma = d2;
        }

        public Hct create() {
            int i = 100;
            int i2 = 0;
            while (i2 < i) {
                int i3 = (i2 + i) / 2;
                int i4 = i3 + 1;
                boolean z = maxChroma(i3) < maxChroma(i4);
                if (maxChroma(i3) >= this.requestedChroma - 0.01d) {
                    if (Math.abs(i2 - 50) < Math.abs(i - 50)) {
                        i = i3;
                    } else {
                        if (i2 == i3) {
                            return Hct.from(this.hue, this.requestedChroma, i2);
                        }
                        i2 = i3;
                    }
                } else if (z) {
                    i2 = i4;
                } else {
                    i = i3;
                }
            }
            return Hct.from(this.hue, this.requestedChroma, i2);
        }

        private double maxChroma(int i) {
            if (this.chromaCache.get(Integer.valueOf(i)) == null) {
                this.chromaCache.put(Integer.valueOf(i), Double.valueOf(Hct.from(this.hue, MAX_CHROMA_VALUE, i).getChroma()));
            }
            return this.chromaCache.get(Integer.valueOf(i)).doubleValue();
        }
    }
}
