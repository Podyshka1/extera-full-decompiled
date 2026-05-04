package com.google.android.gms.cast.framework.media.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.internal.cast.zzag;
import de.robv.android.xposed.callbacks.XCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zzf extends AsyncTask {
    private static final Logger zza = new Logger("FetchBitmapTask");
    private final zzi zzb;
    private final zzb zzc;

    public zzf(Context context, int i, int i2, boolean z, long j, int i3, int i4, int i5, zzb zzbVar) {
        this.zzc = zzbVar;
        this.zzb = zzag.zze(context.getApplicationContext(), this, new zze(this, null), i, i2, false, 2097152L, 5, 333, XCallback.PRIORITY_HIGHEST);
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        Uri uri;
        zzi zziVar;
        Uri[] uriArr = (Uri[]) objArr;
        if (uriArr.length != 1 || (uri = uriArr[0]) == null || (zziVar = this.zzb) == null) {
            return null;
        }
        try {
            return zziVar.zze(uri);
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "doFetch", zzi.class.getSimpleName());
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        zzb zzbVar = this.zzc;
        Bitmap bitmap = (Bitmap) obj;
        if (zzbVar != null) {
            zzbVar.zzb(bitmap);
        }
    }
}
