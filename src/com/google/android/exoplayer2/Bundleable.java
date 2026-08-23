package com.google.android.exoplayer2;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public interface Bundleable {

    public interface Creator<T extends Bundleable> {
        T fromBundle(Bundle bundle);
    }

    Bundle toBundle();
}
