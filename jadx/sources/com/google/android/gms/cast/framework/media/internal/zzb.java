package com.google.android.gms.cast.framework.media.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.common.internal.Preconditions;
import de.robv.android.xposed.callbacks.XCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zzb {
    private final Context zza;
    private final ImageHints zzb;
    private Uri zzc;
    private zzf zzd;
    private zzc zze;
    private Bitmap zzf;
    private boolean zzg;
    private zza zzh;

    public zzb(Context context) {
        this(context, new ImageHints(-1, 0, 0));
    }

    private final void zze() {
        zzf zzfVar = this.zzd;
        if (zzfVar != null) {
            zzfVar.cancel(true);
            this.zzd = null;
        }
        this.zzc = null;
        this.zzf = null;
        this.zzg = false;
    }

    public final void zza() {
        zze();
        this.zzh = null;
    }

    public final void zzb(Bitmap bitmap) {
        this.zzf = bitmap;
        this.zzg = true;
        zza zzaVar = this.zzh;
        if (zzaVar != null) {
            zzaVar.zza(bitmap);
        }
        this.zzd = null;
    }

    public final void zzc(zza zzaVar) {
        this.zzh = zzaVar;
    }

    public final boolean zzd(Uri uri) {
        if (uri == null) {
            zze();
            return true;
        }
        if (uri.equals(this.zzc)) {
            return this.zzg;
        }
        zze();
        this.zzc = uri;
        if (this.zzb.getWidthInPixels() == 0 || this.zzb.getHeightInPixels() == 0) {
            this.zzd = new zzf(this.zza, 0, 0, false, 2097152L, 5, 333, XCallback.PRIORITY_HIGHEST, this);
        } else {
            Context context = this.zza;
            ImageHints imageHints = this.zzb;
            this.zzd = new zzf(context, imageHints.getWidthInPixels(), imageHints.getHeightInPixels(), false, 2097152L, 5, 333, XCallback.PRIORITY_HIGHEST, this);
        }
        ((zzf) Preconditions.checkNotNull(this.zzd)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Uri) Preconditions.checkNotNull(this.zzc));
        return false;
    }

    public zzb(Context context, ImageHints imageHints) {
        this.zza = context;
        this.zzb = imageHints;
        this.zze = new zzc();
        zze();
    }
}
