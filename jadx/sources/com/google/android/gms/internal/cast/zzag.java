package com.google.android.gms.internal.cast;

import android.app.Service;
import android.content.Context;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.ModuleUnavailableException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import de.robv.android.xposed.callbacks.XCallback;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzag {
    private static final Logger zza = new Logger("CastDynamiteModule");

    public static com.google.android.gms.cast.framework.zzaj zza(Context context, CastOptions castOptions, zzam zzamVar, Map map) {
        return zzf(context).zzf(ObjectWrapper.wrap(context.getApplicationContext()), castOptions, zzamVar, map);
    }

    public static com.google.android.gms.cast.framework.zzam zzb(Context context, CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzag zzagVar) {
        if (iObjectWrapper == null) {
            return null;
        }
        try {
            return zzf(context).zzg(castOptions, iObjectWrapper, zzagVar);
        } catch (RemoteException | ModuleUnavailableException e) {
            zza.m337d(e, "Unable to call %s on %s.", "newCastSessionImpl", zzak.class.getSimpleName());
            return null;
        }
    }

    public static com.google.android.gms.cast.framework.zzat zzc(Service service, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        if (iObjectWrapper != null && iObjectWrapper2 != null) {
            try {
                return zzf(service.getApplicationContext()).zzh(ObjectWrapper.wrap(service), iObjectWrapper, iObjectWrapper2);
            } catch (RemoteException | ModuleUnavailableException e) {
                zza.m337d(e, "Unable to call %s on %s.", "newReconnectionServiceImpl", zzak.class.getSimpleName());
            }
        }
        return null;
    }

    public static com.google.android.gms.cast.framework.zzaw zzd(Context context, String str, String str2, com.google.android.gms.cast.framework.zzbe zzbeVar) {
        try {
            return zzf(context).zzi(str, str2, zzbeVar);
        } catch (RemoteException | ModuleUnavailableException e) {
            zza.m337d(e, "Unable to call %s on %s.", "newSessionImpl", zzak.class.getSimpleName());
            return null;
        }
    }

    public static com.google.android.gms.cast.framework.media.internal.zzi zze(Context context, AsyncTask asyncTask, com.google.android.gms.cast.framework.media.internal.zzk zzkVar, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        try {
            zzak zzakVarZzf = zzf(context.getApplicationContext());
            return zzakVarZzf.zze() >= 233700000 ? zzakVarZzf.zzk(ObjectWrapper.wrap(context.getApplicationContext()), ObjectWrapper.wrap(asyncTask), zzkVar, i, i2, false, 2097152L, 5, 333, XCallback.PRIORITY_HIGHEST) : zzakVarZzf.zzj(ObjectWrapper.wrap(asyncTask), zzkVar, i, i2, false, 2097152L, 5, 333, XCallback.PRIORITY_HIGHEST);
        } catch (RemoteException | ModuleUnavailableException e) {
            zza.m337d(e, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", zzak.class.getSimpleName());
            return null;
        }
    }

    private static zzak zzf(Context context) throws ModuleUnavailableException {
        try {
            IBinder iBinderInstantiate = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, "com.google.android.gms.cast.framework.dynamite").instantiate("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl");
            if (iBinderInstantiate == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderInstantiate.queryLocalInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
            return iInterfaceQueryLocalInterface instanceof zzak ? (zzak) iInterfaceQueryLocalInterface : new zzaj(iBinderInstantiate);
        } catch (DynamiteModule.LoadingException e) {
            throw new ModuleUnavailableException(e);
        }
    }
}
