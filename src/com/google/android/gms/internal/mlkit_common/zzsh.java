package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsh {
    private static final zzai zzb = zzai.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");
    private final String zzc;
    private final String zzd;
    private final zzrz zze;
    private final SharedPrefManager zzf;
    private final Task zzg;
    private final Task zzh;
    private final String zzi;
    private final int zzj;

    public zzsh(Context context, final SharedPrefManager sharedPrefManager, zzrz zzrzVar, String str) {
        new HashMap();
        new HashMap();
        this.zzc = context.getPackageName();
        this.zzd = CommonUtils.getAppVersion(context);
        this.zzf = sharedPrefManager;
        this.zze = zzrzVar;
        zzsv.zza();
        this.zzi = str;
        this.zzg = MLTaskExecutor.getInstance().scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzse
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza();
            }
        });
        MLTaskExecutor mLTaskExecutor = MLTaskExecutor.getInstance();
        Objects.requireNonNull(sharedPrefManager);
        this.zzh = mLTaskExecutor.scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzsf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return sharedPrefManager.getMlSdkInstanceId();
            }
        });
        zzai zzaiVar = zzb;
        this.zzj = zzaiVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzaiVar.get(str)) : -1;
    }

    public final /* synthetic */ String zza() {
        return LibraryVersion.getInstance().getVersion(this.zzi);
    }
}
