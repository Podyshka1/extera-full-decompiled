package com.google.android.gms.internal.cast;

import android.view.MotionEvent;
import android.view.View;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzdk implements View.OnTouchListener {
    public zzdk(zzdl zzdlVar) {
        Objects.requireNonNull(zzdlVar);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return true;
    }
}
