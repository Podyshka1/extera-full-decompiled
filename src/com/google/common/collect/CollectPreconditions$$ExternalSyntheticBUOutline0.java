package com.google.common.collect;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CollectPreconditions$$ExternalSyntheticBUOutline0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ void m457m(Object obj, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append((Object) " cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }
}
