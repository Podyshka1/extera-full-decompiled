package org.telegram.p029ui.Components;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class ReplyMessageLine$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ int m1270m(int i, int i2) {
        int i3 = i % i2;
        if (i3 == 0) {
            return 0;
        }
        return (((i ^ i2) >> 31) | 1) > 0 ? i3 : i3 + i2;
    }
}
