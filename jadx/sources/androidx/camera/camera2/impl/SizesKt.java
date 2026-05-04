package androidx.camera.camera2.impl;

import android.util.Size;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SizesKt {
    public static final int area(Size size) {
        Intrinsics.checkNotNullParameter(size, "<this>");
        return size.getWidth() * size.getHeight();
    }
}
