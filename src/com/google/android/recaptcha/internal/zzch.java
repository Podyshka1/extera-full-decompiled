package com.google.android.recaptcha.internal;

import java.lang.reflect.Method;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzch extends zzce {
    private final zzcg zza;
    private final String zzb;

    public zzch(zzcg zzcgVar, String str, Object obj) {
        super(obj);
        this.zza = zzcgVar;
        this.zzb = str;
    }

    @Override // com.google.android.recaptcha.internal.zzce
    public final boolean zza(Object obj, Method method, Object[] objArr) {
        List listEmptyList;
        if (!Intrinsics.areEqual(method.getName(), this.zzb)) {
            return false;
        }
        zzcg zzcgVar = this.zza;
        if (objArr == null || (listEmptyList = ArraysKt.asList(objArr)) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        zzcgVar.zzb(listEmptyList);
        return true;
    }
}
