package com.google.android.recaptcha.internal;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcf extends zzce {
    private final Function2 zza;
    private final String zzb;

    public zzcf(Function2 function2, String str, Object obj) {
        super(obj);
        this.zza = function2;
        this.zzb = str;
    }

    @Override // com.google.android.recaptcha.internal.zzce
    public final boolean zza(Object obj, Method method, Object[] objArr) {
        Collection collectionEmptyList;
        if (!Intrinsics.areEqual(method.getName(), this.zzb)) {
            return false;
        }
        zzpi zzpiVarZzf = zzpl.zzf();
        if (objArr != null) {
            collectionEmptyList = new ArrayList(objArr.length);
            for (Object obj2 : objArr) {
                zzpj zzpjVarZzf = zzpk.zzf();
                zzpjVarZzf.zzv(obj2.toString());
                collectionEmptyList.add((zzpk) zzpjVarZzf.zzj());
            }
        } else {
            collectionEmptyList = CollectionsKt.emptyList();
        }
        zzpiVarZzf.zzd(collectionEmptyList);
        zzpl zzplVar = (zzpl) zzpiVarZzf.zzj();
        Function2 function2 = this.zza;
        byte[] bArrZzd = zzplVar.zzd();
        function2.invoke(objArr, zzfy.zzh().zzi(bArrZzd, 0, bArrZzd.length));
        return true;
    }
}
