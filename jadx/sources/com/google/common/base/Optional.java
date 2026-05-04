package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Optional implements Serializable {
    public abstract Object get();

    public abstract boolean isPresent();

    public static Optional absent() {
        return Absent.withType();
    }

    /* JADX INFO: renamed from: of */
    public static Optional m479of(Object obj) {
        return new Present(Preconditions.checkNotNull(obj));
    }

    Optional() {
    }
}
