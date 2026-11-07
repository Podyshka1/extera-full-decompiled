package com.google.android.gms.internal.cast;

import android.os.IInterface;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface zzbc extends IInterface {
    int zze();

    com.google.android.gms.cast.framework.zzai zzf(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzbe zzbeVar, Map map);

    com.google.android.gms.cast.framework.zzav zzg(String str, String str2, com.google.android.gms.cast.framework.zzbd zzbdVar);

    com.google.android.gms.cast.framework.zzal zzh(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzaf zzafVar);

    com.google.android.gms.cast.framework.zzas zzi(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    com.google.android.gms.cast.framework.media.internal.zzg zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.media.internal.zzi zziVar, int i, int i2, boolean z, long j, int i3, int i4, int i5);

    com.google.android.gms.cast.framework.media.internal.zzg zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, com.google.android.gms.cast.framework.media.internal.zzi zziVar, int i, int i2, boolean z, long j, int i3, int i4, int i5);
}
