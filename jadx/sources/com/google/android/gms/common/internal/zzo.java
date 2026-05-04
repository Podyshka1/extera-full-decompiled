package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
public final class zzo {
    private static final Uri zza = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();
    private final String zzb;
    private final String zzc;
    private final ComponentName zzd;
    private final int zze;
    private final boolean zzf;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        return Objects.equal(this.zzb, zzoVar.zzb) && Objects.equal(this.zzc, zzoVar.zzc) && Objects.equal(this.zzd, zzoVar.zzd) && this.zzf == zzoVar.zzf;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzb, this.zzc, this.zzd, 4225, Boolean.valueOf(this.zzf));
    }

    public final String toString() {
        String str = this.zzb;
        if (str != null) {
            return str;
        }
        Preconditions.checkNotNull(this.zzd);
        return this.zzd.flattenToString();
    }

    public final ComponentName zza() {
        return this.zzd;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b5 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Intent zzb(Context context) throws zzaj {
        Bundle bundleCall;
        PendingIntent pendingIntent;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient;
        if (this.zzb == null) {
            return new Intent().setComponent(this.zzd);
        }
        Intent intent = null;
        if (this.zzf) {
            Bundle bundle = new Bundle();
            bundle.putString("serviceActionBundleKey", this.zzb);
            try {
                contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(zza);
            } catch (RemoteException e) {
                e = e;
                bundleCall = null;
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                if (bundleCall == null) {
                }
                if (intent == null) {
                }
                if (intent == null) {
                }
            } catch (IllegalArgumentException e2) {
                e = e2;
                bundleCall = null;
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                if (bundleCall == null) {
                }
                if (intent == null) {
                }
                if (intent == null) {
                }
            }
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                throw new RemoteException("Failed to acquire ContentProviderClient");
            }
            try {
                bundleCall = contentProviderClientAcquireUnstableContentProviderClient.call("serviceIntentCall", null, bundle);
                try {
                } catch (RemoteException e3) {
                    e = e3;
                    Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                } catch (IllegalArgumentException e4) {
                    e = e4;
                    Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                }
                if (bundleCall == null && (intent = (Intent) bundleCall.getParcelable("serviceResponseIntentKey")) == null && (pendingIntent = (PendingIntent) bundleCall.getParcelable("serviceMissingResolutionIntentKey")) != null) {
                    Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action " + this.zzb + " but has possible resolution");
                    throw new zzaj(new ConnectionResult(25, pendingIntent));
                }
                if (intent == null) {
                    Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(this.zzb)));
                }
            } finally {
                contentProviderClientAcquireUnstableContentProviderClient.release();
            }
        }
        return intent == null ? new Intent(this.zzb).setPackage(this.zzc) : intent;
    }

    public final String zzc() {
        return this.zzc;
    }

    public zzo(String str, String str2, int i, boolean z) {
        Preconditions.checkNotEmpty(str);
        this.zzb = str;
        Preconditions.checkNotEmpty(str2);
        this.zzc = str2;
        this.zzd = null;
        this.zze = 4225;
        this.zzf = z;
    }
}
