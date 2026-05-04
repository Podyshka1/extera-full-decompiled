package com.google.android.material.color.utilities;

import java.util.function.Function;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes5.dex */
public final class MaterialDynamicColors {
    private final boolean isExtendedFidelity;

    public MaterialDynamicColors() {
        this.isExtendedFidelity = false;
    }

    public MaterialDynamicColors(boolean z) {
        this.isExtendedFidelity = z;
    }

    public DynamicColor highestSurface(DynamicScheme dynamicScheme) {
        return dynamicScheme.isDark ? surfaceBright() : surfaceDim();
    }

    public DynamicColor primaryPaletteKeyColor() {
        return DynamicColor.fromPalette("primary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda18
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda19
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).primaryPalette.getKeyColor().getTone());
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor secondaryPaletteKeyColor() {
        return DynamicColor.fromPalette("secondary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda24
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda25
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).secondaryPalette.getKeyColor().getTone());
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor tertiaryPaletteKeyColor() {
        return DynamicColor.fromPalette("tertiary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda35
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda36
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).tertiaryPalette.getKeyColor().getTone());
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor neutralPaletteKeyColor() {
        return DynamicColor.fromPalette("neutral_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda10
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda11
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).neutralPalette.getKeyColor().getTone());
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor neutralVariantPaletteKeyColor() {
        return DynamicColor.fromPalette("neutral_variant_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda83
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda84
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).neutralVariantPalette.getKeyColor().getTone());
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor background() {
        return new DynamicColor("background", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda43
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda44
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 6.0d : 98.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor onBackground() {
        return new DynamicColor("on_background", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda47
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda48
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 90.0d : 10.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda49
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.background();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(3.0d, 3.0d, 4.5d, 7.0d), null);
    }

    public DynamicColor surface() {
        return new DynamicColor("surface", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda0
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda1
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 6.0d : 98.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceDim() {
        return new DynamicColor("surface_dim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda12
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda13
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                return Double.valueOf(dynamicScheme.isDark ? 6.0d : new ContrastCurve(87.0d, 87.0d, 80.0d, 75.0d).get(dynamicScheme.contrastLevel));
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceBright() {
        return new DynamicColor("surface_bright", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda52
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda53
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                return Double.valueOf(dynamicScheme.isDark ? new ContrastCurve(24.0d, 24.0d, 29.0d, 34.0d).get(dynamicScheme.contrastLevel) : 98.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainerLowest() {
        return new DynamicColor("surface_container_lowest", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda106
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda107
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                return Double.valueOf(dynamicScheme.isDark ? new ContrastCurve(4.0d, 4.0d, 2.0d, 0.0d).get(dynamicScheme.contrastLevel) : 100.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainerLow() {
        return new DynamicColor("surface_container_low", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda26
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda27
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3470$r8$lambda$zqyuLwUAMpA4objlLAhcLHX_M8((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    /* JADX INFO: renamed from: $r8$lambda$zqyuLwUAMpA4ob-jlLAhcLHX_M8, reason: not valid java name */
    public static /* synthetic */ Double m3470$r8$lambda$zqyuLwUAMpA4objlLAhcLHX_M8(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = new ContrastCurve(10.0d, 10.0d, 11.0d, 12.0d).get(dynamicScheme.contrastLevel);
        } else {
            d = new ContrastCurve(96.0d, 96.0d, 96.0d, 95.0d).get(dynamicScheme.contrastLevel);
        }
        return Double.valueOf(d);
    }

    public DynamicColor surfaceContainer() {
        return new DynamicColor("surface_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda134
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda135
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$BudreMWMW90tFtQmj9Tje4mFw2Q((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public static /* synthetic */ Double $r8$lambda$BudreMWMW90tFtQmj9Tje4mFw2Q(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = new ContrastCurve(12.0d, 12.0d, 16.0d, 20.0d).get(dynamicScheme.contrastLevel);
        } else {
            d = new ContrastCurve(94.0d, 94.0d, 92.0d, 90.0d).get(dynamicScheme.contrastLevel);
        }
        return Double.valueOf(d);
    }

    public DynamicColor surfaceContainerHigh() {
        return new DynamicColor("surface_container_high", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda45
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda46
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$JBGnBxBZTn0aszq9lftyBe99gkM((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public static /* synthetic */ Double $r8$lambda$JBGnBxBZTn0aszq9lftyBe99gkM(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = new ContrastCurve(17.0d, 17.0d, 21.0d, 25.0d).get(dynamicScheme.contrastLevel);
        } else {
            d = new ContrastCurve(92.0d, 92.0d, 88.0d, 85.0d).get(dynamicScheme.contrastLevel);
        }
        return Double.valueOf(d);
    }

    public DynamicColor surfaceContainerHighest() {
        return new DynamicColor("surface_container_highest", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda89
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda90
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3452$r8$lambda$_42detWe0fsyTkbR_PTZRTdlVA((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    /* JADX INFO: renamed from: $r8$lambda$_42detWe0fsyTkbR_-PTZRTdlVA, reason: not valid java name */
    public static /* synthetic */ Double m3452$r8$lambda$_42detWe0fsyTkbR_PTZRTdlVA(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = new ContrastCurve(22.0d, 22.0d, 26.0d, 30.0d).get(dynamicScheme.contrastLevel);
        } else {
            d = new ContrastCurve(90.0d, 90.0d, 84.0d, 80.0d).get(dynamicScheme.contrastLevel);
        }
        return Double.valueOf(d);
    }

    public DynamicColor onSurface() {
        return new DynamicColor("on_surface", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda7
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda8
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 90.0d : 10.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public DynamicColor surfaceVariant() {
        return new DynamicColor("surface_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda81
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda82
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor onSurfaceVariant() {
        return new DynamicColor("on_surface_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda136
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda137
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 30.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    public DynamicColor inverseSurface() {
        return new DynamicColor("inverse_surface", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda138
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda139
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 90.0d : 20.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, null, null, null, null);
    }

    public DynamicColor inverseOnSurface() {
        return new DynamicColor("inverse_on_surface", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda116
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda117
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 20.0d : 95.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda118
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.inverseSurface();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public DynamicColor outline() {
        return new DynamicColor("outline", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda108
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda109
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 60.0d : 50.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.5d, 3.0d, 4.5d, 7.0d), null);
    }

    public DynamicColor outlineVariant() {
        return new DynamicColor("outline_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda50
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda51
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 80.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), null);
    }

    public DynamicColor shadow() {
        return new DynamicColor("shadow", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda87
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda88
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(0.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, null, null, null, null);
    }

    public DynamicColor scrim() {
        return new DynamicColor("scrim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda154
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda155
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(0.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, null, null, null, null);
    }

    public DynamicColor surfaceTint() {
        return new DynamicColor("surface_tint", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda110
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda111
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 40.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor primary() {
        return new DynamicColor("primary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda151
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda152
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$WKuM40qTBNXHU7wm0V72um7qmSk((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda153
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$flOmK91DuQNU6ZQSz7iP36OcNL0(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static /* synthetic */ Double $r8$lambda$WKuM40qTBNXHU7wm0V72um7qmSk(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 100.0d : 0.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    public static /* synthetic */ ToneDeltaPair $r8$lambda$flOmK91DuQNU6ZQSz7iP36OcNL0(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.primaryContainer(), materialDynamicColors.primary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onPrimary() {
        return new DynamicColor("on_primary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda54
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda55
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3450$r8$lambda$WOlE5kxkT79msWjDgzf1fx044((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda56
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.primary();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: renamed from: $r8$lambda$WOlE5kxkT79msWjD-gzf1fx-044, reason: not valid java name */
    public static /* synthetic */ Double m3450$r8$lambda$WOlE5kxkT79msWjDgzf1fx044(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    public DynamicColor primaryContainer() {
        return new DynamicColor("primary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda40
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda41
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$oud39NBBQwPf4miQLXaVom4Ngk8(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda42
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$7xuiLGVfeXhAeM3UkKNdYnFnJuQ(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static /* synthetic */ Double $r8$lambda$oud39NBBQwPf4miQLXaVom4Ngk8(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        if (materialDynamicColors.isFidelity(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.sourceColorHct.getTone());
        }
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 85.0d : 25.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    public static /* synthetic */ ToneDeltaPair $r8$lambda$7xuiLGVfeXhAeM3UkKNdYnFnJuQ(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.primaryContainer(), materialDynamicColors.primary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onPrimaryContainer() {
        return new DynamicColor("on_primary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda75
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda76
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3447$r8$lambda$UTcjeNt4r0e7oCvNpx26eOkXmI(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda77
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.primaryContainer();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    /* JADX INFO: renamed from: $r8$lambda$UTcjeNt-4r0e7oCvNpx26eOkXmI, reason: not valid java name */
    public static /* synthetic */ Double m3447$r8$lambda$UTcjeNt4r0e7oCvNpx26eOkXmI(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        if (materialDynamicColors.isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(materialDynamicColors.primaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 0.0d : 100.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 30.0d);
    }

    public DynamicColor inversePrimary() {
        return new DynamicColor("inverse_primary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda57
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda58
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 40.0d : 80.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda59
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.inverseSurface();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), null);
    }

    public DynamicColor secondary() {
        return new DynamicColor("secondary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda103
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda104
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 40.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda105
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$BFmGIXcWi4f4p2BcAJRzW9LQ2ls(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static /* synthetic */ ToneDeltaPair $r8$lambda$BFmGIXcWi4f4p2BcAJRzW9LQ2ls(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.secondaryContainer(), materialDynamicColors.secondary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onSecondary() {
        return new DynamicColor("on_secondary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda100
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda101
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3434$r8$lambda$EHvXVIuPCC62HjTJZCQ14VkpZw((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda102
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.secondary();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: renamed from: $r8$lambda$EHvXVIuPCC6-2HjTJZCQ14VkpZw, reason: not valid java name */
    public static /* synthetic */ Double m3434$r8$lambda$EHvXVIuPCC62HjTJZCQ14VkpZw(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 100.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    public DynamicColor secondaryContainer() {
        return new DynamicColor("secondary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda28
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda29
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3438$r8$lambda$IzbKJSnfUCQljqgkag8UIDTnr0(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda30
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3453$r8$lambda$bYy_j_7FTDwyNksCrdNvtza9MU(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$IzbKJSnfUCQljqgkag8UIDTn-r0, reason: not valid java name */
    public static /* synthetic */ Double m3438$r8$lambda$IzbKJSnfUCQljqgkag8UIDTnr0(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        materialDynamicColors.getClass();
        double d = dynamicScheme.isDark ? 30.0d : 90.0d;
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 30.0d : 85.0d);
        }
        if (!materialDynamicColors.isFidelity(dynamicScheme)) {
            return Double.valueOf(d);
        }
        return Double.valueOf(findDesiredChromaByTone(dynamicScheme.secondaryPalette.getHue(), dynamicScheme.secondaryPalette.getChroma(), d, !dynamicScheme.isDark));
    }

    /* JADX INFO: renamed from: $r8$lambda$bYy_j_7FTDwy-NksCrdNvtza9MU, reason: not valid java name */
    public static /* synthetic */ ToneDeltaPair m3453$r8$lambda$bYy_j_7FTDwyNksCrdNvtza9MU(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.secondaryContainer(), materialDynamicColors.secondary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onSecondaryContainer() {
        return new DynamicColor("on_secondary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda122
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda123
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3424$r8$lambda$32MvzKssB1DUr6_nCxdc0kzj0Y(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda124
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.secondaryContainer();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    /* JADX INFO: renamed from: $r8$lambda$32MvzKssB1DUr6_nCxdc0kzj-0Y, reason: not valid java name */
    public static /* synthetic */ Double m3424$r8$lambda$32MvzKssB1DUr6_nCxdc0kzj0Y(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        materialDynamicColors.getClass();
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
        }
        if (materialDynamicColors.isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(materialDynamicColors.secondaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 30.0d);
    }

    public DynamicColor tertiary() {
        return new DynamicColor("tertiary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda160
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda161
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$nYm0QxMry84fY5ECHJfCeAbryh0((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda162
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$iktiPh2eC0EW4rhZMdfP8gj5o4A(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static /* synthetic */ Double $r8$lambda$nYm0QxMry84fY5ECHJfCeAbryh0(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 90.0d : 25.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    public static /* synthetic */ ToneDeltaPair $r8$lambda$iktiPh2eC0EW4rhZMdfP8gj5o4A(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.tertiaryContainer(), materialDynamicColors.tertiary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onTertiary() {
        return new DynamicColor("on_tertiary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda4
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda5
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$bttoD6hlzyPMkpIfWsX921JE5es((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda6
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.tertiary();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public static /* synthetic */ Double $r8$lambda$bttoD6hlzyPMkpIfWsX921JE5es(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    public DynamicColor tertiaryContainer() {
        return new DynamicColor("tertiary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda97
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda98
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$EhNHL0AfADKDonWgcSUuaLYCoeU(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda99
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$TeOBmH0oPwAYssMA1OvxLrCA4l4(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static /* synthetic */ Double $r8$lambda$EhNHL0AfADKDonWgcSUuaLYCoeU(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        materialDynamicColors.getClass();
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 60.0d : 49.0d);
        }
        if (materialDynamicColors.isFidelity(dynamicScheme)) {
            return Double.valueOf(DislikeAnalyzer.fixIfDisliked(dynamicScheme.tertiaryPalette.getHct(dynamicScheme.sourceColorHct.getTone())).getTone());
        }
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    public static /* synthetic */ ToneDeltaPair $r8$lambda$TeOBmH0oPwAYssMA1OvxLrCA4l4(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.tertiaryContainer(), materialDynamicColors.tertiary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onTertiaryContainer() {
        return new DynamicColor("on_tertiary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda119
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda120
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$dd8XlA1UaZulOTDQRl8DNvtKl4k(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda121
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.tertiaryContainer();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    public static /* synthetic */ Double $r8$lambda$dd8XlA1UaZulOTDQRl8DNvtKl4k(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        materialDynamicColors.getClass();
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 0.0d : 100.0d);
        }
        if (materialDynamicColors.isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(materialDynamicColors.tertiaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 30.0d);
    }

    public DynamicColor error() {
        return new DynamicColor("error", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda129
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).errorPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda130
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 40.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda131
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3429$r8$lambda$BMz8OkgDrHqeLMIMbUq9S1v4U(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$BMz8OkgDrHqeL-M-IMbUq9S1v4U, reason: not valid java name */
    public static /* synthetic */ ToneDeltaPair m3429$r8$lambda$BMz8OkgDrHqeLMIMbUq9S1v4U(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.errorContainer(), materialDynamicColors.error(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onError() {
        return new DynamicColor("on_error", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda70
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).errorPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda71
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 20.0d : 100.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda72
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.error();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public DynamicColor errorContainer() {
        return new DynamicColor("error_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda145
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).errorPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda146
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda147
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$Nojx5v6iMlKxtendojdYTexdCnI(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static /* synthetic */ ToneDeltaPair $r8$lambda$Nojx5v6iMlKxtendojdYTexdCnI(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.errorContainer(), materialDynamicColors.error(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onErrorContainer() {
        return new DynamicColor("on_error_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda140
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).errorPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda141
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$62cUxaPZkVk4xiQfC0iRBdYdusc((DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda142
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.errorContainer();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    public static /* synthetic */ Double $r8$lambda$62cUxaPZkVk4xiQfC0iRBdYdusc(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 30.0d);
    }

    public DynamicColor primaryFixed() {
        return new DynamicColor("primary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda91
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda92
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 40.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda93
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3417$r8$lambda$1ajoGTyPZ9TzeW9mzWnvl68kYE(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-1ajoGTyPZ9TzeW9mzWnvl68kYE, reason: not valid java name */
    public static /* synthetic */ ToneDeltaPair m3417$r8$lambda$1ajoGTyPZ9TzeW9mzWnvl68kYE(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.primaryFixed(), materialDynamicColors.primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor primaryFixedDim() {
        return new DynamicColor("primary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda94
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda95
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 30.0d : 80.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda96
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3422$r8$lambda$q1dCMb2SlEyzZwqMrtKptEsoAg(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-q1dCMb2SlEyzZwqMrtKptEsoAg, reason: not valid java name */
    public static /* synthetic */ ToneDeltaPair m3422$r8$lambda$q1dCMb2SlEyzZwqMrtKptEsoAg(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.primaryFixed(), materialDynamicColors.primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onPrimaryFixed() {
        return new DynamicColor("on_primary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda125
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda126
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 100.0d : 10.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda127
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.primaryFixedDim();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda128
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.primaryFixed();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public DynamicColor onPrimaryFixedVariant() {
        return new DynamicColor("on_primary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda63
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda64
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 90.0d : 30.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda65
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.primaryFixedDim();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda66
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.primaryFixed();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    public DynamicColor secondaryFixed() {
        return new DynamicColor("secondary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda60
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda61
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 80.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda62
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3455$r8$lambda$dT2vd0ye9I8ZLQX29tlccvvjI(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$d-T2vd0ye9I8ZLQX-29tlccvvjI, reason: not valid java name */
    public static /* synthetic */ ToneDeltaPair m3455$r8$lambda$dT2vd0ye9I8ZLQX29tlccvvjI(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.secondaryFixed(), materialDynamicColors.secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor secondaryFixedDim() {
        return new DynamicColor("secondary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda78
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda79
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 70.0d : 80.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda80
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.$r8$lambda$OvZEJThb90sQ3uStky3z7MNZ8Ws(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static /* synthetic */ ToneDeltaPair $r8$lambda$OvZEJThb90sQ3uStky3z7MNZ8Ws(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.secondaryFixed(), materialDynamicColors.secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onSecondaryFixed() {
        return new DynamicColor("on_secondary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda112
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda113
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(10.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda114
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.secondaryFixedDim();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda115
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.secondaryFixed();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public DynamicColor onSecondaryFixedVariant() {
        return new DynamicColor("on_secondary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda156
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda157
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 25.0d : 30.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda158
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.secondaryFixedDim();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda159
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.secondaryFixed();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    public DynamicColor tertiaryFixed() {
        return new DynamicColor("tertiary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda148
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda149
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 40.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda150
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3469$r8$lambda$vgY7zb80SyF4nYx5nOlJkDcHvQ(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$vgY7zb80SyF4-nYx5nOlJkDcHvQ, reason: not valid java name */
    public static /* synthetic */ ToneDeltaPair m3469$r8$lambda$vgY7zb80SyF4nYx5nOlJkDcHvQ(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.tertiaryFixed(), materialDynamicColors.tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor tertiaryFixedDim() {
        return new DynamicColor("tertiary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda67
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda68
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 30.0d : 80.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda9(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda69
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.m3460$r8$lambda$i4lCydEpft7pCwJfQsh2EHMSw(this.f$0, (DynamicScheme) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$i4lCydE-p-ft7pCwJfQsh2EHMSw, reason: not valid java name */
    public static /* synthetic */ ToneDeltaPair m3460$r8$lambda$i4lCydEpft7pCwJfQsh2EHMSw(MaterialDynamicColors materialDynamicColors, DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(materialDynamicColors.tertiaryFixed(), materialDynamicColors.tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onTertiaryFixed() {
        return new DynamicColor("on_tertiary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda31
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda32
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 100.0d : 10.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda33
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.tertiaryFixedDim();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda34
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.tertiaryFixed();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public DynamicColor onTertiaryFixedVariant() {
        return new DynamicColor("on_tertiary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda20
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda21
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 90.0d : 30.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda22
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.tertiaryFixedDim();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda23
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.tertiaryFixed();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    public DynamicColor controlActivated() {
        return DynamicColor.fromPalette("control_activated", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda16
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda17
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor controlNormal() {
        return DynamicColor.fromPalette("control_normal", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda14
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda15
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 30.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor controlHighlight() {
        return new DynamicColor("control_highlight", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda37
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda38
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 100.0d : 0.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, false, null, null, null, null, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda39
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 0.2d : 0.12d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor textPrimaryInverse() {
        return DynamicColor.fromPalette("text_primary_inverse", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda132
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda133
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 10.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor textSecondaryAndTertiaryInverse() {
        return DynamicColor.fromPalette("text_secondary_and_tertiary_inverse", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda143
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda144
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 80.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor textPrimaryInverseDisableOnly() {
        return DynamicColor.fromPalette("text_primary_inverse_disable_only", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda73
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda74
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 10.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor textSecondaryAndTertiaryInverseDisabled() {
        return DynamicColor.fromPalette("text_secondary_and_tertiary_inverse_disabled", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda2
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda3
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 10.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public DynamicColor textHintInverse() {
        return DynamicColor.fromPalette("text_hint_inverse", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda85
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda86
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 10.0d : 90.0d);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    private boolean isFidelity(DynamicScheme dynamicScheme) {
        Variant variant;
        Variant variant2;
        return !(!this.isExtendedFidelity || (variant2 = dynamicScheme.variant) == Variant.MONOCHROME || variant2 == Variant.NEUTRAL) || (variant = dynamicScheme.variant) == Variant.FIDELITY || variant == Variant.CONTENT;
    }

    private static boolean isMonochrome(DynamicScheme dynamicScheme) {
        return dynamicScheme.variant == Variant.MONOCHROME;
    }

    static double findDesiredChromaByTone(double d, double d2, double d3, boolean z) {
        Hct hctFrom = Hct.from(d, d2, d3);
        if (hctFrom.getChroma() < d2) {
            double chroma = hctFrom.getChroma();
            while (hctFrom.getChroma() < d2) {
                d3 += z ? -1.0d : 1.0d;
                Hct hctFrom2 = Hct.from(d, d2, d3);
                if (chroma > hctFrom2.getChroma() || Math.abs(hctFrom2.getChroma() - d2) < 0.4d) {
                    return d3;
                }
                if (Math.abs(hctFrom2.getChroma() - d2) < Math.abs(hctFrom.getChroma() - d2)) {
                    hctFrom = hctFrom2;
                }
                chroma = Math.max(chroma, hctFrom2.getChroma());
            }
        }
        return d3;
    }
}
