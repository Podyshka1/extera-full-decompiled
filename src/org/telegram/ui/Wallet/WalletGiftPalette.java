package org.telegram.ui.Wallet;

import android.graphics.Color;
import android.util.LruCache;
import androidx.core.graphics.ColorUtils;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.OKLCH;

/* JADX INFO: loaded from: classes8.dex */
abstract class WalletGiftPalette {
    private static final LruCache<String, Integer> EDGE_2D_COLORS = new LruCache<>(128);
    private static final float[] BLUE_MATERIAL = {0.017513232f, 0.2844959f, 1.2347647f, 0.012535676f, 0.21663007f, 0.8356014f, 0.02682078f, 0.40080056f, 2.4040875f, 0.0032399998f, 0.171f, 0.47039998f};
    private static final float[] DIAMOND_TINT = {0.0f, 0.47809f, 1.0f};
    private static final LruCache<Integer, Integer> CARD_2D_INKS = new LruCache<>(64);
    private static final int STOCK_2D_INK = makeStock2DInk();

    public static float[] of(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
        if (stargiftattributebackdrop == null) {
            return new float[]{0.0f, 1.0f, 1.0f};
        }
        float[] fArrLch = lch(ColorUtils.blendARGB(stargiftattributebackdrop.center_color | (-16777216), (-16777216) | stargiftattributebackdrop.edge_color, 0.5f));
        float[] fArrLch2 = lch(-16216082);
        float fExp = (float) Math.exp(-Math.pow((((float) ((Math.toDegrees(fArrLch[2]) + 360.0d) % 360.0d)) - 300.0f) / 38.0f, 2.0d));
        return new float[]{fArrLch[2] - fArrLch2[2], Math.min(Math.max(0.15f, Math.min(1.0f, (fArrLch[1] * 1.5f) / 0.155f)) * ((0.18f * fExp) + 1.0f), (lch(stargiftattributebackdrop.center_color)[1] * 1.2f) / 0.173f), ((((Math.max(0.1f, fArrLch[0] - 0.02f) / fArrLch2[0]) - 1.0f) * Math.max(0.0f, Math.min(1.0f, (0.6f - fArrLch[0]) / 0.15f))) + 1.0f) - (fExp * 0.025f)};
    }

    public static float[] lch(int i) {
        double[] dArrRgb2oklch = OKLCH.rgb2oklch(OKLCH.rgb2srgbLinear(OKLCH.rgb(i)));
        return new float[]{(float) dArrRgb2oklch[0], (float) dArrRgb2oklch[1], Double.isNaN(dArrRgb2oklch[2]) ? 0.0f : (float) Math.toRadians(dArrRgb2oklch[2])};
    }

    private static double[] gamut(double[] dArr, double d) {
        double[] dArrOklch2rgb = null;
        for (int i = 0; i < 40; i++) {
            dArrOklch2rgb = OKLCH.oklch2rgb(dArr);
            double d2 = dArrOklch2rgb[0];
            if (d2 >= 0.0d) {
                double d3 = dArrOklch2rgb[1];
                if (d3 >= 0.0d) {
                    double d4 = dArrOklch2rgb[2];
                    if (d4 >= 0.0d && d2 <= d && d3 <= d && d4 <= d) {
                        return dArrOklch2rgb;
                    }
                } else {
                    continue;
                }
            }
            dArr[1] = dArr[1] * 0.95d;
        }
        return dArrOklch2rgb;
    }

    public static int tint(int i, float[] fArr, int i2) {
        int i3 = ((i2 / 3) * 4) + 10;
        int i4 = 0;
        if (fArr.length < 18 || fArr[i3] < 0.0f) {
            if (fArr[i2] == 0.0f && fArr[i2 + 1] == 1.0f && fArr[i2 + 2] == 1.0f) {
                return i;
            }
            double[] dArrRgb2oklch = OKLCH.rgb2oklch(OKLCH.rgb2srgbLinear(OKLCH.rgb(i)));
            double d = dArrRgb2oklch[0];
            dArrRgb2oklch[0] = Math.max(d < 0.8d ? 0.0d : 0.8d, d * ((double) fArr[i2 + 2]));
            dArrRgb2oklch[1] = dArrRgb2oklch[1] * ((double) fArr[i2 + 1]);
            dArrRgb2oklch[2] = (Double.isNaN(dArrRgb2oklch[2]) ? 0.0d : dArrRgb2oklch[2]) + Math.toDegrees(fArr[i2]);
            return ColorUtils.setAlphaComponent(OKLCH.rgb(OKLCH.srgbLinear2rgb(gamut(dArrRgb2oklch, 1.0d))), Color.alpha(i));
        }
        int i5 = i & 16777215;
        if (i5 == 165332) {
            i4 = 2;
        } else if (i5 == 29132 || i5 == 561134) {
            i4 = 1;
        } else if (i5 != 2267888 && i5 != 1485817) {
            i4 = 3;
        }
        return (Color.alpha(i) << 24) | (((int) fArr[i3 + i4]) & 16777215);
    }

    public static int cardTone(int i, float[] fArr) {
        if (fArr == null || fArr.length < 18) {
            return i;
        }
        int[] iArr = new int[2];
        for (int i2 = 0; i2 < 2; i2++) {
            int i3 = i2 * 4;
            float f = fArr[i3 + 10];
            iArr[i2] = f < 0.0f ? i : surface(i, (int) f, (int) fArr[i3 + 11]);
        }
        return ColorUtils.blendARGB(iArr[0], iArr[1], fArr[8]);
    }

    public static float lightness(int i) {
        return oklch(i)[0];
    }

    public static int clampLightness(int i, float f, float f2) {
        float[] fArrOklch = oklch(i);
        float f3 = fArrOklch[0];
        return (f3 < f || f3 > f2) ? (i & (-16777216)) | (oklchToArgb(Math.max(f, Math.min(f2, f3)), fArrOklch[1], fArrOklch[2]) & 16777215) : i;
    }

    public static int surface(int i, int i2, int i3) {
        int i4 = i2 | (-16777216);
        int i5 = i3 | (-16777216);
        float[] fArrOklch = oklch(ColorUtils.blendARGB(i4, i5, 0.5f));
        float fExp = (float) Math.exp(-Math.pow((((float) ((Math.toDegrees(fArrOklch[2]) + 360.0d) % 360.0d)) - 300.0f) / 38.0f, 2.0d));
        float fMax = Math.max(0.15f, Math.min(1.0f, (fArrOklch[1] * 1.5f) / 0.155f)) * ((0.18f * fExp) + 1.0f);
        float[] fArrOklch2 = oklch(i4);
        float[] fArrOklch3 = oklch(i5);
        float fMax2 = Math.max(0.0f, Math.min(1.0f, (0.6f - ((fArrOklch2[0] + fArrOklch3[0]) / 2.0f)) / 0.15f));
        float f = oklch(-16216082)[0];
        float f2 = oklch(-15291399)[0];
        float[] fArrOklch4 = oklch(i);
        float fMax3 = Math.max(-2.0f, Math.min(3.0f, (fArrOklch4[0] - f) / (f2 - f)));
        float f3 = fArrOklch3[0];
        float f4 = (f3 - 0.02f) + (fMax3 * (fArrOklch2[0] - f3));
        float f5 = fArrOklch4[0];
        float f6 = f5 + ((f4 - f5) * fMax2) + (fExp * (-0.025f));
        float f7 = fArrOklch2[1] * 1.2f;
        float f8 = fArrOklch4[1];
        return oklchToArgb(Math.max(0.05f, Math.min(0.97f, f6)), (Math.min(f8 * fMax, f7 * (f8 / 0.173f)) * (1.0f - fMax2)) + (fArrOklch2[1] * 1.1f * fMax2), fArrOklch[2]);
    }

    public static int card2DEdgeTone(int i, float[] fArr) {
        int iSurface2DEdge = i == -16216082 ? -14456619 : -14184457;
        if (fArr == null || fArr.length < 18) {
            return iSurface2DEdge;
        }
        float f = fArr[10];
        int iSurface2DEdge2 = f < 0.0f ? iSurface2DEdge : surface2DEdge(i, (int) f, (int) fArr[11]);
        float f2 = fArr[14];
        if (f2 >= 0.0f) {
            iSurface2DEdge = surface2DEdge(i, (int) f2, (int) fArr[15]);
        }
        return ColorUtils.blendARGB(iSurface2DEdge2, iSurface2DEdge, fArr[8]);
    }

    public static int surface2DEdge(int i, int i2, int i3) {
        String str = i + ":" + i2 + ":" + i3;
        LruCache<String, Integer> lruCache = EDGE_2D_COLORS;
        Integer num = lruCache.get(str);
        if (num != null) {
            return num.intValue();
        }
        int i4 = i2 | (-16777216);
        int i5 = i3 | (-16777216);
        float[] fArrOklch = oklch(ColorUtils.blendARGB(i4, i5, 0.7f));
        float[] fArrOklch2 = oklch(i4);
        float[] fArrOklch3 = oklch(i5);
        float[] fArrOklch4 = oklch(i);
        float fExp = (float) Math.exp(-Math.pow((((float) ((Math.toDegrees(fArrOklch[2]) + 360.0d) % 360.0d)) - 300.0f) / 38.0f, 2.0d));
        float fMax = Math.max(0.15f, Math.min(1.0f, (fArrOklch[1] * 1.5f) / 0.155f)) * ((0.18f * fExp) + 1.0f);
        float fMax2 = Math.max(0.0f, Math.min(1.0f, (0.6f - ((fArrOklch2[0] + fArrOklch3[0]) / 2.0f)) / 0.15f));
        float f = oklch(-16216082)[0];
        float fMax3 = Math.max(-2.0f, Math.min(3.0f, (fArrOklch4[0] - f) / (oklch(-15291399)[0] - f)));
        float f2 = fArrOklch3[0];
        float f3 = (f2 - 0.02f) + (fMax3 * (fArrOklch2[0] - f2));
        float f4 = fArrOklch4[0];
        float f5 = (f4 + ((f3 - f4) * fMax2)) - (fExp * 0.025f);
        float f6 = fArrOklch4[1];
        float fMin = (Math.min(fMax * f6, fArrOklch2[1] * 1.2f * (f6 / 0.173f)) * (1.0f - fMax2)) + (fArrOklch2[1] * 1.1f * fMax2);
        float[] fArrOklch5 = i == -15291399 ? oklch(ColorUtils.blendARGB(i4, i5, 0.5f)) : fArrOklch3;
        float f7 = f5 + ((fArrOklch5[0] - f5) * 0.399f);
        float f8 = fMin + ((fArrOklch5[1] - fMin) * 0.399f);
        float fAtan2 = fArrOklch[2] + (((float) Math.atan2(Math.sin(fArrOklch5[2] - r1), Math.cos(fArrOklch5[2] - fArrOklch[2]))) * 0.399f);
        float fMax4 = Math.max(0.0f, Math.min(1.0f, (fArrOklch[1] - 0.06f) / 0.055f)) * (1.0f - Math.max(0.0f, Math.min(1.0f, (fArrOklch[1] - 0.125f) / 0.015f)));
        float fExp2 = (float) Math.exp(-Math.pow(((((Math.toDegrees(fAtan2) % 360.0d) + 360.0d) % 360.0d) - 70.0d) / 35.0d, 2.0d));
        float f9 = f8 * ((fMax4 * 0.35f * (1.0f - (0.75f * fExp2))) + 1.0f);
        float fMax5 = Math.max(fArrOklch2[1], fArrOklch3[1]) * 1.3f * (1.0f - (fExp2 * 0.15f));
        if (f9 > fMax5 && fMax5 > 0.0f) {
            f9 += (fMax5 - f9) * 0.8f;
        }
        int iOklchToArgb = oklchToArgb(Math.max(0.05f, Math.min(0.97f, f7 - (fExp2 * 0.025f))), f9, fAtan2);
        lruCache.put(str, Integer.valueOf(iOklchToArgb));
        return iOklchToArgb;
    }

    private static float lin(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4d);
    }

    private static float[] oklch(int i) {
        float fLin = lin(Color.red(i) / 255.0f);
        float fLin2 = lin(Color.green(i) / 255.0f);
        float fLin3 = lin(Color.blue(i) / 255.0f);
        float fCbrt = (float) Math.cbrt((0.41222146f * fLin) + (0.53633255f * fLin2) + (0.051445995f * fLin3));
        float fCbrt2 = (float) Math.cbrt((0.2119035f * fLin) + (0.6806995f * fLin2) + (0.10739696f * fLin3));
        float fCbrt3 = (float) Math.cbrt((fLin * 0.08830246f) + (fLin2 * 0.28171885f) + (fLin3 * 0.6299787f));
        double d = ((1.9779985f * fCbrt) - (2.4285922f * fCbrt2)) + (0.4505937f * fCbrt3);
        double d2 = ((fCbrt * 0.025904037f) + (fCbrt2 * 0.78277177f)) - (fCbrt3 * 0.80867577f);
        return new float[]{((0.21045426f * fCbrt) + (0.7936178f * fCbrt2)) - (0.004072047f * fCbrt3), (float) Math.hypot(d, d2), (float) Math.atan2(d2, d)};
    }

    private static float[] oklchRgb(float f, float f2, float f3) {
        double d = f3;
        float fCos = ((float) Math.cos(d)) * f2;
        float fSin = f2 * ((float) Math.sin(d));
        float f4 = (0.39633778f * fCos) + f + (0.21580376f * fSin);
        float f5 = (f - (0.105561346f * fCos)) - (0.06385417f * fSin);
        float f6 = (f - (fCos * 0.08948418f)) - (fSin * 1.2914855f);
        float f7 = f4 * f4 * f4;
        float f8 = f5 * f5 * f5;
        float f9 = f6 * f6 * f6;
        return new float[]{((4.0767417f * f7) - (3.3077116f * f8)) + (0.23096994f * f9), (((-1.268438f) * f7) + (2.6097574f * f8)) - (0.34131938f * f9), ((f7 * (-0.0041960864f)) - (f8 * 0.7034186f)) + (f9 * 1.7076147f)};
    }

    private static int oklchToArgb(float f, float f2, float f3) {
        float[] fArrOklchRgb = oklchRgb(f, f2, f3);
        for (int i = 0; i < 40 && outOfGamut(fArrOklchRgb); i++) {
            f2 *= 0.95f;
            fArrOklchRgb = oklchRgb(f, f2, f3);
        }
        return Color.rgb(enc(fArrOklchRgb[0]), enc(fArrOklchRgb[1]), enc(fArrOklchRgb[2]));
    }

    private static boolean outOfGamut(float[] fArr) {
        for (float f : fArr) {
            if (f < -0.001f || f > 1.001f) {
                return true;
            }
        }
        return false;
    }

    private static int enc(float f) {
        float fMax = Math.max(0.0f, Math.min(1.0f, f));
        return Math.max(0, Math.min(255, (int) (((fMax <= 0.0031308f ? fMax * 12.92f : (((float) Math.pow(fMax, 0.4166666666666667d)) * 1.055f) - 0.055f) * 255.0f) + 0.5f)));
    }

    public static void putBackdrop(float[] fArr, int i, TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
        int i2 = i * 4;
        fArr[i2 + 10] = stargiftattributebackdrop == null ? -1.0f : stargiftattributebackdrop.center_color & 16777215;
        fArr[i2 + 11] = stargiftattributebackdrop == null ? -1.0f : stargiftattributebackdrop.edge_color & 16777215;
        fArr[i2 + 12] = stargiftattributebackdrop == null ? -1.0f : stargiftattributebackdrop.pattern_color & 16777215;
        fArr[i2 + 13] = stargiftattributebackdrop != null ? stargiftattributebackdrop.text_color & 16777215 : -1.0f;
    }

    private static float linear(int i, int i2) {
        float f = ((i >> i2) & 255) / 255.0f;
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4d);
    }

    private static void diamondTint(int i, float[] fArr, int i2) {
        float f = ((i >> 16) & 255) / 255.0f;
        float f2 = ((i >> 8) & 255) / 255.0f;
        float f3 = (i & 255) / 255.0f;
        float fMin = Math.min(f, Math.min(f2, f3));
        float fMax = Math.max(f, Math.max(f2, f3)) - fMin;
        float[] fArr2 = DIAMOND_TINT;
        float f4 = (fArr2[0] * 0.2126f) + (fArr2[1] * 0.7152f) + (fArr2[2] * 0.0722f);
        float fMin2 = Math.min(1.0f, fMax / 0.15f);
        fArr[i2] = (((fMax > 0.0f ? (f - fMin) / fMax : 0.0f) - f4) * fMin2) + f4;
        fArr[i2 + 1] = (((fMax > 0.0f ? (f2 - fMin) / fMax : 0.0f) - f4) * fMin2) + f4;
        fArr[i2 + 2] = f4 + (((fMax > 0.0f ? (f3 - fMin) / fMax : 0.0f) - f4) * fMin2);
    }

    public static int cardNumber2DColor(float[] fArr) {
        return ColorUtils.blendARGB(cardNumber2DColor(fArr, 0), cardNumber2DColor(fArr, 1), (fArr == null || fArr.length < 18) ? 0.0f : fArr[8]);
    }

    private static int cardNumber2DColor(float[] fArr, int i) {
        int i2 = i * 4;
        int i3 = i2 + 10;
        if (fArr != null && fArr.length >= 18) {
            float f = fArr[i3];
            float f2 = 0.0f;
            if (f >= 0.0f) {
                int iSurface = surface(-16216082, (int) f, (int) fArr[i2 + 11]);
                Integer num = CARD_2D_INKS.get(Integer.valueOf(iSurface));
                if (num != null) {
                    return num.intValue();
                }
                float[] fArrOklch = oklch(iSurface);
                float fInkLuminance = (inkLuminance(-16216082) + 0.05f) / (inkLuminance(STOCK_2D_INK) + 0.05f);
                float fInkLuminance2 = inkLuminance(iSurface);
                float f3 = ((fInkLuminance2 + 0.05f) / fInkLuminance) - 0.05f;
                if (f3 < 0.004f) {
                    f3 = fInkLuminance2 * 0.3f;
                }
                float f4 = 1.0f;
                float fMax = Math.max(0.0f, Math.min(1.0f, fArrOklch[1] / 0.1f));
                for (int i4 = 0; i4 < 18; i4++) {
                    float f5 = (f2 + f4) / 2.0f;
                    if (inkLuminance(oklchToArgb(f5, inkMaxChroma(f5, fArrOklch[2]) * fMax, fArrOklch[2])) < f3) {
                        f2 = f5;
                    } else {
                        f4 = f5;
                    }
                }
                float f6 = (f2 + f4) / 2.0f;
                int iOklchToArgb = oklchToArgb(f6, inkMaxChroma(f6, fArrOklch[2]) * fMax, fArrOklch[2]);
                CARD_2D_INKS.put(Integer.valueOf(iSurface), Integer.valueOf(iOklchToArgb));
                return iOklchToArgb;
            }
        }
        return STOCK_2D_INK;
    }

    private static int makeStock2DInk() {
        float[] fArrOklch = oklch(-16748084);
        float f = fArrOklch[0] * 0.876903f;
        float f2 = fArrOklch[2];
        float fInkMaxChroma = inkMaxChroma(f, f2);
        float f3 = f2;
        for (int i = -15; i <= 15; i++) {
            float radians = ((float) Math.toRadians(i)) + f2;
            float fInkMaxChroma2 = inkMaxChroma(f, radians);
            if (fInkMaxChroma2 > 0.002f + fInkMaxChroma) {
                f3 = radians;
                fInkMaxChroma = fInkMaxChroma2;
            }
        }
        float f4 = f2 + ((f3 - f2) * 0.723f);
        return oklchToArgb(f, inkMaxChroma(f, f4), f4);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static float inkMaxChroma(float f, float f2) {
        float f3 = 0.5f;
        float f4 = 0.0f;
        for (int i = 0; i < 18; i++) {
            float f5 = (f4 + f3) / 2.0f;
            float[] fArrOklchRgb = oklchRgb(f, f5, f2);
            float f6 = fArrOklchRgb[0];
            if (f6 >= 0.0f) {
                float f7 = fArrOklchRgb[1];
                if (f7 >= 0.0f) {
                    float f8 = fArrOklchRgb[2];
                    if (f8 < 0.0f || f6 > 1.0f || f7 > 1.0f || f8 > 1.0f) {
                        f3 = f5;
                    } else {
                        f4 = f5;
                    }
                }
            }
        }
        return f4;
    }

    private static float inkLuminance(int i) {
        return (linear(i, 16) * 0.2126f) + (linear(i, 8) * 0.7152f) + (linear(i, 0) * 0.0722f);
    }

    public static int cardNumberColor(float[] fArr, int i) {
        int i2 = i * 4;
        int i3 = i2 + 10;
        if (fArr == null || fArr.length < 18 || fArr[i3] < 0.0f) {
            return ColorUtils.blendARGB(-16611884, -16748084, 0.2f);
        }
        return cardNumberColor((int) fArr[i2 + 12], (int) fArr[i2 + 11]);
    }

    public static int cardNumberColor(int i, int i2) {
        return ColorUtils.blendARGB(i | (-16777216), i2 | (-16777216), 0.2f);
    }

    public static int cardNumberColor(float[] fArr) {
        if (fArr == null || fArr.length < 18) {
            return cardNumberColor((float[]) null, 0);
        }
        return ColorUtils.blendARGB(cardNumberColor(fArr, 0), cardNumberColor(fArr, 1), fArr[8]);
    }

    public static float[] material(float[] fArr) {
        float[] fArr2 = new float[42];
        for (int i = 0; i < 2; i++) {
            int i2 = i * 4;
            int i3 = i2 + 10;
            if (fArr.length < 18 || fArr[i3] < 0.0f) {
                System.arraycopy(BLUE_MATERIAL, 0, fArr2, i * 12, 12);
                fArr2[i + 28] = 1.0f;
                System.arraycopy(DIAMOND_TINT, 0, fArr2, (i * 3) + 30, 3);
            } else {
                fArr2[i + 28] = 0.6f;
                diamondTint((int) fArr[i3], fArr2, (i * 3) + 30);
                int i4 = (int) fArr[i3];
                int i5 = (int) fArr[i2 + 11];
                int iSurface = surface(-16216082, i4, i5);
                int iSurface2 = surface(-15291399, i4, i5);
                for (int i6 = 0; i6 < 3; i6++) {
                    int i7 = 16 - (i6 * 8);
                    float fLinear = linear(iSurface, i7) * 0.73f;
                    float fLinear2 = linear(iSurface2, i7) * 0.73f;
                    int i8 = i * 12;
                    fArr2[i8 + i6] = (fLinear + fLinear2) / 2.0f;
                    fArr2[i8 + 3 + i6] = fLinear;
                    fArr2[i8 + 6 + i6] = fLinear2;
                    fArr2[i8 + 9 + i6] = fLinear;
                }
            }
        }
        for (int i9 = 0; i9 < 2; i9++) {
            int iCardNumberColor = cardNumberColor(fArr, i9);
            int i10 = i9 * 3;
            fArr2[i10 + 36] = ((iCardNumberColor >> 16) & 255) / 255.0f;
            fArr2[i10 + 37] = ((iCardNumberColor >> 8) & 255) / 255.0f;
            fArr2[i10 + 38] = (iCardNumberColor & 255) / 255.0f;
        }
        System.arraycopy(fArr, 6, fArr2, 24, 4);
        return fArr2;
    }

    public static int tint(int i, float[] fArr) {
        return ColorUtils.blendARGB(tint(i, fArr, 0), tint(i, fArr, 3), fArr[8]);
    }
}
