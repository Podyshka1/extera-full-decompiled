package com.google.android.gms.internal.measurement;

import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
final class zzys extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ Object initialValue() {
        return new Random();
    }
}
