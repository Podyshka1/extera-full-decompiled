package com.google.android.gms.internal.cast;

import android.os.IInterface;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface zzak extends IInterface {
    int zze();

    com.google.android.gms.cast.framework.zzaj zzf(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzam zzamVar, Map map);

    com.google.android.gms.cast.framework.zzam zzg(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzag zzagVar);

    com.google.android.gms.cast.framework.zzat zzh(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    com.google.android.gms.cast.framework.zzaw zzi(String str, String str2, com.google.android.gms.cast.framework.zzbe zzbeVar);

    com.google.android.gms.cast.framework.media.internal.zzi zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.media.internal.zzk zzkVar, int i, int i2, boolean z, long j, int i3, int i4, int i5);

    com.google.android.gms.cast.framework.media.internal.zzi zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, com.google.android.gms.cast.framework.media.internal.zzk zzkVar, int i, int i2, boolean z, long j, int i3, int i4, int i5);
}
