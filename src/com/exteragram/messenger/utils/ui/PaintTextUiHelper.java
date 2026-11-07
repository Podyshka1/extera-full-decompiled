package com.exteragram.messenger.utils.ui;

import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.Paint.Views.EditTextOutline;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PaintTextUiHelper {
    public static int applyOutlined(EditTextOutline editTextOutline, int i) {
        int i2 = AndroidUtilities.computePerceivedBrightness(i) >= 0.721f ? -16777216 : -1;
        editTextOutline.setFrameColor(0);
        editTextOutline.setStrokeColor(i);
        editTextOutline.setTextColor(i2);
        return i2;
    }
}
