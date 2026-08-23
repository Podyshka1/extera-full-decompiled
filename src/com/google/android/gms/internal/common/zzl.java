package com.google.android.gms.internal.common;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzl {
    public static Object zza(Class cls, String str, zzj... zzjVarArr) {
        return zzc(cls, "isIsolated", null, false, zzjVarArr);
    }

    private static Object zzc(Class cls, String str, Object obj, boolean z, zzj... zzjVarArr) {
        int length = zzjVarArr.length;
        Class<?>[] clsArr = new Class[length];
        Object[] objArr = new Object[length];
        Object obj2 = null;
        if (zzjVarArr.length <= 0) {
            return cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
        }
        zzj zzjVar = zzjVarArr[0];
        obj2.getClass();
        throw null;
    }
}
