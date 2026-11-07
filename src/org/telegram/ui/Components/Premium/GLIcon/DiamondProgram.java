package org.telegram.ui.Components.Premium.GLIcon;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
abstract class DiamondProgram {
    public static int create(Context context, String str, String str2) {
        return GLProgramCache.create(context, "diamond", str, str2, "position", "normal");
    }
}
