package org.telegram.p029ui.Components.blur3;

import android.graphics.ColorMatrix;
import android.view.View;
import org.telegram.messenger.MediaDataController;
import org.telegram.p029ui.Components.blur3.capture.IBlur3Hash;

/* JADX INFO: loaded from: classes3.dex */
public class Blur3HashImpl implements IBlur3Hash {
    private long hash;
    private boolean unsupported;

    public /* synthetic */ void add(ColorMatrix colorMatrix) {
        add(colorMatrix.getArray());
    }

    @Override // org.telegram.p029ui.Components.blur3.capture.IBlur3Hash
    public /* synthetic */ void add(View view) {
        IBlur3Hash.CC.$default$add(this, view);
    }

    @Override // org.telegram.p029ui.Components.blur3.capture.IBlur3Hash
    public /* synthetic */ void add(boolean z) {
        add(z ? 1L : 0L);
    }

    @Override // org.telegram.p029ui.Components.blur3.capture.IBlur3Hash
    public /* synthetic */ void add(float[] fArr) {
        IBlur3Hash.CC.$default$add(this, fArr);
    }

    @Override // org.telegram.p029ui.Components.blur3.capture.IBlur3Hash
    public /* synthetic */ void addF(float f) {
        add(Float.floatToIntBits(f));
    }

    public void start() {
        this.hash = 0L;
        this.unsupported = false;
    }

    public long get() {
        if (this.unsupported) {
            return -1L;
        }
        return this.hash;
    }

    public boolean isUnsupported() {
        return this.unsupported;
    }

    @Override // org.telegram.p029ui.Components.blur3.capture.IBlur3Hash
    public void add(long j) {
        this.hash = MediaDataController.calcHash(this.hash, j);
    }

    @Override // org.telegram.p029ui.Components.blur3.capture.IBlur3Hash
    public void unsupported() {
        this.unsupported = true;
    }
}
