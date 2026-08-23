package org.telegram.p029ui.Stars;

import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ISuperRipple {
    public final View view;

    public abstract void animate(float f, float f2, float f3);

    public ISuperRipple(View view) {
        this.view = view;
    }
}
