package com.google.android.material.color;

import androidx.appcompat.R$attr;
import com.google.android.material.C1349R;

/* JADX INFO: loaded from: classes5.dex */
public final class HarmonizedColorAttributes {
    private static final int[] HARMONIZED_MATERIAL_ATTRIBUTES = {R$attr.colorError, C1349R.attr.colorOnError, C1349R.attr.colorErrorContainer, C1349R.attr.colorOnErrorContainer};
    private final int[] attributes;
    private final int themeOverlay;

    public static HarmonizedColorAttributes create(int[] iArr) {
        return new HarmonizedColorAttributes(iArr, 0);
    }

    public static HarmonizedColorAttributes create(int[] iArr, int i) {
        return new HarmonizedColorAttributes(iArr, i);
    }

    public static HarmonizedColorAttributes createMaterialDefaults() {
        return create(HARMONIZED_MATERIAL_ATTRIBUTES, C1349R.style.ThemeOverlay_Material3_HarmonizedColors);
    }

    private HarmonizedColorAttributes(int[] iArr, int i) {
        if (i != 0 && iArr.length == 0) {
            throw new IllegalArgumentException("Theme overlay should be used with the accompanying int[] attributes.");
        }
        this.attributes = iArr;
        this.themeOverlay = i;
    }

    public int[] getAttributes() {
        return this.attributes;
    }

    public int getThemeOverlay() {
        return this.themeOverlay;
    }
}
