package com.google.android.material.color.utilities;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Function;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes5.dex */
public final class DynamicColor {
    public final Function<DynamicScheme, DynamicColor> background;
    public final ContrastCurve contrastCurve;
    private final HashMap<DynamicScheme, Hct> hctCache;
    public final boolean isBackground;
    public final String name;
    public final Function<DynamicScheme, Double> opacity;
    public final Function<DynamicScheme, TonalPalette> palette;
    public final Function<DynamicScheme, DynamicColor> secondBackground;
    public final Function<DynamicScheme, Double> tone;
    public final Function<DynamicScheme, ToneDeltaPair> toneDeltaPair;

    /* JADX INFO: renamed from: $r8$lambda$HYD-TTRX49hWk5qNJTOhVJLMxRg, reason: not valid java name */
    public static /* synthetic */ TonalPalette m3416$r8$lambda$HYDTTRX49hWk5qNJTOhVJLMxRg(TonalPalette tonalPalette, DynamicScheme dynamicScheme) {
        return tonalPalette;
    }

    public DynamicColor(String str, Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2, boolean z, Function<DynamicScheme, DynamicColor> function3, Function<DynamicScheme, DynamicColor> function4, ContrastCurve contrastCurve, Function<DynamicScheme, ToneDeltaPair> function5) {
        this.hctCache = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = null;
    }

    public DynamicColor(String str, Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2, boolean z, Function<DynamicScheme, DynamicColor> function3, Function<DynamicScheme, DynamicColor> function4, ContrastCurve contrastCurve, Function<DynamicScheme, ToneDeltaPair> function5, Function<DynamicScheme, Double> function6) {
        this.hctCache = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = function6;
    }

    public static DynamicColor fromPalette(String str, Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2) {
        return new DynamicColor(str, function, function2, false, null, null, null, null);
    }

    public static DynamicColor fromPalette(String str, Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2, boolean z) {
        return new DynamicColor(str, function, function2, z, null, null, null, null);
    }

    public static DynamicColor fromArgb(String str, int i) {
        final Hct hctFromInt = Hct.fromInt(i);
        final TonalPalette tonalPaletteFromInt = TonalPalette.fromInt(i);
        return fromPalette(str, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda0
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DynamicColor.m3416$r8$lambda$HYDTTRX49hWk5qNJTOhVJLMxRg(tonalPaletteFromInt, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda1
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(hctFromInt.getTone());
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public int getArgb(DynamicScheme dynamicScheme) {
        int i = getHct(dynamicScheme).toInt();
        Function<DynamicScheme, Double> function = this.opacity;
        if (function == null) {
            return i;
        }
        return (MathUtils.clampInt(0, 255, (int) Math.round(function.apply(dynamicScheme).doubleValue() * 255.0d)) << 24) | (i & 16777215);
    }

    public Hct getHct(DynamicScheme dynamicScheme) {
        Hct hct = this.hctCache.get(dynamicScheme);
        if (hct != null) {
            return hct;
        }
        Hct hct2 = this.palette.apply(dynamicScheme).getHct(getTone(dynamicScheme));
        if (this.hctCache.size() > 4) {
            this.hctCache.clear();
        }
        this.hctCache.put(dynamicScheme, hct2);
        return hct2;
    }

    public double getTone(DynamicScheme dynamicScheme) {
        double d;
        double dMax;
        double dMin;
        boolean z = false;
        boolean z2 = dynamicScheme.contrastLevel < 0.0d;
        Function<DynamicScheme, ToneDeltaPair> function = this.toneDeltaPair;
        if (function != null) {
            ToneDeltaPair toneDeltaPairApply = function.apply(dynamicScheme);
            DynamicColor roleA = toneDeltaPairApply.getRoleA();
            DynamicColor roleB = toneDeltaPairApply.getRoleB();
            double delta = toneDeltaPairApply.getDelta();
            TonePolarity polarity = toneDeltaPairApply.getPolarity();
            boolean stayTogether = toneDeltaPairApply.getStayTogether();
            double tone = this.background.apply(dynamicScheme).getTone(dynamicScheme);
            if (polarity == TonePolarity.NEARER || ((polarity == TonePolarity.LIGHTER && !dynamicScheme.isDark) || (polarity == TonePolarity.DARKER && dynamicScheme.isDark))) {
                z = true;
            }
            DynamicColor dynamicColor = z ? roleA : roleB;
            DynamicColor dynamicColor2 = z ? roleB : roleA;
            boolean zEquals = this.name.equals(dynamicColor.name);
            double d2 = dynamicScheme.isDark ? 1.0d : -1.0d;
            double d3 = dynamicColor.contrastCurve.get(dynamicScheme.contrastLevel);
            double d4 = dynamicColor2.contrastCurve.get(dynamicScheme.contrastLevel);
            double dDoubleValue = dynamicColor.tone.apply(dynamicScheme).doubleValue();
            if (Contrast.ratioOfTones(tone, dDoubleValue) < d3) {
                dDoubleValue = foregroundTone(tone, d3);
            }
            boolean z3 = z2;
            double dDoubleValue2 = dynamicColor2.tone.apply(dynamicScheme).doubleValue();
            if (Contrast.ratioOfTones(tone, dDoubleValue2) < d4) {
                dDoubleValue2 = foregroundTone(tone, d4);
            }
            if (z3) {
                dDoubleValue = foregroundTone(tone, d3);
                dDoubleValue2 = foregroundTone(tone, d4);
            }
            if ((dDoubleValue2 - dDoubleValue) * d2 < delta) {
                double d5 = delta * d2;
                double dClampDouble = MathUtils.clampDouble(0.0d, 100.0d, dDoubleValue + d5);
                if ((dClampDouble - dDoubleValue) * d2 < delta) {
                    dDoubleValue = MathUtils.clampDouble(0.0d, 100.0d, dClampDouble - d5);
                }
                dDoubleValue2 = dClampDouble;
            }
            if (50.0d > dDoubleValue || dDoubleValue >= 60.0d) {
                if (50.0d > dDoubleValue2 || dDoubleValue2 >= 60.0d) {
                    dMax = dDoubleValue2;
                } else if (!stayTogether) {
                    dMax = d2 > 0.0d ? 60.0d : 49.0d;
                } else if (d2 > 0.0d) {
                    dMax = Math.max(dDoubleValue2, (delta * d2) + 60.0d);
                    dDoubleValue = 60.0d;
                } else {
                    dMin = Math.min(dDoubleValue2, (delta * d2) + 49.0d);
                    dMax = dMin;
                    dDoubleValue = 49.0d;
                }
            } else if (d2 > 0.0d) {
                dMax = Math.max(dDoubleValue2, (delta * d2) + 60.0d);
                dDoubleValue = 60.0d;
            } else {
                dMin = Math.min(dDoubleValue2, (delta * d2) + 49.0d);
                dMax = dMin;
                dDoubleValue = 49.0d;
            }
            return zEquals ? dDoubleValue : dMax;
        }
        boolean z4 = z2;
        double dDoubleValue3 = this.tone.apply(dynamicScheme).doubleValue();
        Function<DynamicScheme, DynamicColor> function2 = this.background;
        if (function2 == null) {
            return dDoubleValue3;
        }
        double tone2 = function2.apply(dynamicScheme).getTone(dynamicScheme);
        double d6 = this.contrastCurve.get(dynamicScheme.contrastLevel);
        if (Contrast.ratioOfTones(tone2, dDoubleValue3) < d6) {
            dDoubleValue3 = foregroundTone(tone2, d6);
        }
        if (z4) {
            dDoubleValue3 = foregroundTone(tone2, d6);
        }
        if (!this.isBackground || 50.0d > dDoubleValue3 || dDoubleValue3 >= 60.0d) {
            d = dDoubleValue3;
        } else {
            d = 49.0d;
            if (Contrast.ratioOfTones(49.0d, tone2) < d6) {
                d = 60.0d;
            }
        }
        if (this.secondBackground != null) {
            double tone3 = this.background.apply(dynamicScheme).getTone(dynamicScheme);
            double tone4 = this.secondBackground.apply(dynamicScheme).getTone(dynamicScheme);
            double dMax2 = Math.max(tone3, tone4);
            double dMin2 = Math.min(tone3, tone4);
            if (Contrast.ratioOfTones(dMax2, d) < d6 || Contrast.ratioOfTones(dMin2, d) < d6) {
                double dLighter = Contrast.lighter(dMax2, d6);
                double dDarker = Contrast.darker(dMin2, d6);
                ArrayList arrayList = new ArrayList();
                if (dLighter != -1.0d) {
                    arrayList.add(Double.valueOf(dLighter));
                }
                if (dDarker != -1.0d) {
                    arrayList.add(Double.valueOf(dDarker));
                }
                if (tonePrefersLightForeground(tone3) || tonePrefersLightForeground(tone4)) {
                    if (dLighter == -1.0d) {
                        return 100.0d;
                    }
                    return dLighter;
                }
                if (arrayList.size() == 1) {
                    return ((Double) arrayList.get(0)).doubleValue();
                }
                if (dDarker == -1.0d) {
                    return 0.0d;
                }
                return dDarker;
            }
        }
        return d;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static double foregroundTone(double d, double d2) {
        double dLighterUnsafe = Contrast.lighterUnsafe(d, d2);
        double dDarkerUnsafe = Contrast.darkerUnsafe(d, d2);
        double dRatioOfTones = Contrast.ratioOfTones(dLighterUnsafe, d);
        double dRatioOfTones2 = Contrast.ratioOfTones(dDarkerUnsafe, d);
        if (tonePrefersLightForeground(d)) {
            return (dRatioOfTones >= d2 || dRatioOfTones >= dRatioOfTones2 || ((Math.abs(dRatioOfTones - dRatioOfTones2) > 0.1d ? 1 : (Math.abs(dRatioOfTones - dRatioOfTones2) == 0.1d ? 0 : -1)) < 0 && (dRatioOfTones > d2 ? 1 : (dRatioOfTones == d2 ? 0 : -1)) < 0 && (dRatioOfTones2 > d2 ? 1 : (dRatioOfTones2 == d2 ? 0 : -1)) < 0)) ? dLighterUnsafe : dDarkerUnsafe;
        }
        if (dRatioOfTones2 >= d2 || dRatioOfTones2 >= dRatioOfTones) {
        }
    }

    public static double enableLightForeground(double d) {
        if (!tonePrefersLightForeground(d) || toneAllowsLightForeground(d)) {
            return d;
        }
        return 49.0d;
    }

    public static boolean tonePrefersLightForeground(double d) {
        return Math.round(d) < 60;
    }

    public static boolean toneAllowsLightForeground(double d) {
        return Math.round(d) <= 49;
    }
}
