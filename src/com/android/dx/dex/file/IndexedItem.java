package com.android.dx.dex.file;

import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public abstract class IndexedItem extends Item {
    private int index = -1;

    public final boolean hasIndex() {
        return this.index >= 0;
    }

    public final int getIndex() {
        int i = this.index;
        if (i >= 0) {
            return i;
        }
        GlShader$$ExternalSyntheticBUOutline1.m966m("index not yet set");
        return 0;
    }

    public final void setIndex(int i) {
        if (this.index != -1) {
            GlShader$$ExternalSyntheticBUOutline1.m966m("index already set");
        } else {
            this.index = i;
        }
    }

    public final String indexString() {
        return "[" + Integer.toHexString(this.index) + ']';
    }
}
