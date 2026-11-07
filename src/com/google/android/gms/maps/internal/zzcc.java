package com.google.android.gms.maps.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.maps.MapsInitializer;
import com.google.android.gms.maps.zzah$$ExternalSyntheticBUOutline0;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzcc {
    private static final String zza = "zzcc";

    @SuppressLint({"StaticFieldLeak"})
    private static Context zzb;
    private static volatile zzf zzc;
    private static final Queue zzd = new ConcurrentLinkedQueue();

    public static zzf zza(Context context, MapsInitializer.Renderer renderer) throws GooglePlayServicesNotAvailableException {
        Preconditions.checkNotNull(context);
        String str = zza;
        Log.d(str, "preferredRenderer: ".concat(String.valueOf(renderer)));
        if (zzc == null) {
            int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context, 13400000);
            if (iIsGooglePlayServicesAvailable != 0) {
                throw new GooglePlayServicesNotAvailableException(iIsGooglePlayServicesAvailable);
            }
            zzc = zze(context, renderer);
            try {
                int iZzd = zzc.zzd();
                String packageName = context.getPackageName();
                if (iZzd != 2 || packageName.equals("com.google.android.apps.photos")) {
                    Log.d(str, "not early loading native code");
                } else {
                    Log.d(str, "early loading native code");
                    try {
                        zzc.zzn(ObjectWrapper.wrap(zzd(context, renderer)));
                    } catch (RemoteException e) {
                        zzah$$ExternalSyntheticBUOutline0.m336m(e);
                        return null;
                    } catch (UnsatisfiedLinkError unused) {
                        Log.w(zza, "Caught UnsatisfiedLinkError attempting to load the LATEST renderer's native library. Attempting to use the LEGACY renderer instead.");
                        zzb = null;
                        zzc = zze(context, MapsInitializer.Renderer.LEGACY);
                    }
                }
                try {
                    zzf zzfVar = zzc;
                    Context contextZzd = zzd(context, renderer);
                    Objects.requireNonNull(contextZzd);
                    zzfVar.zzl(ObjectWrapper.wrap(contextZzd.getResources()), 20000000);
                    Queue queue = zzd;
                    if (!queue.isEmpty()) {
                        try {
                            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(queue.poll());
                            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Preconditions.checkNotNull(null));
                            throw null;
                        } catch (RemoteException e2) {
                            zzah$$ExternalSyntheticBUOutline0.m336m(e2);
                            return null;
                        }
                    }
                } catch (RemoteException e3) {
                    zzah$$ExternalSyntheticBUOutline0.m336m(e3);
                    return null;
                }
            } catch (RemoteException e4) {
                zzah$$ExternalSyntheticBUOutline0.m336m(e4);
                return null;
            }
        }
        return zzc;
    }

    private static Context zzc(Exception exc, Context context) {
        Log.e(zza, "Failed to load maps module, use pre-Chimera", exc);
        return GooglePlayServicesUtil.getRemoteContext(context);
    }

    private static Context zzd(Context context, MapsInitializer.Renderer renderer) {
        Context contextZzc;
        Context context2 = zzb;
        if (context2 != null) {
            return context2;
        }
        String str = renderer == MapsInitializer.Renderer.LEGACY ? "com.google.android.gms.maps_legacy_dynamite" : "com.google.android.gms.maps_core_dynamite";
        try {
            contextZzc = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, str).getModuleContext();
        } catch (Exception e) {
            if (str.equals("com.google.android.gms.maps_dynamite")) {
                contextZzc = zzc(e, context);
            } else {
                try {
                    Log.d(zza, "Attempting to load maps_dynamite again.");
                    contextZzc = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, "com.google.android.gms.maps_dynamite").getModuleContext();
                } catch (Exception e2) {
                    contextZzc = zzc(e2, context);
                }
            }
        }
        zzb = contextZzc;
        if (contextZzc != null) {
            return contextZzc;
        }
        GlShader$$ExternalSyntheticBUOutline1.m1056m("Unable to load maps module, maps container context is null");
        return null;
    }

    private static zzf zze(Context context, MapsInitializer.Renderer renderer) {
        Log.i(zza, "Making Creator dynamically");
        try {
            IBinder iBinder = (IBinder) zzf(((ClassLoader) Preconditions.checkNotNull(zzd(context, renderer).getClassLoader())).loadClass("com.google.android.gms.maps.internal.CreatorImpl"));
            if (iBinder != null) {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
                return iInterfaceQueryLocalInterface instanceof zzf ? (zzf) iInterfaceQueryLocalInterface : new zze(iBinder);
            }
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Unable to load maps module, IBinder for com.google.android.gms.maps.internal.CreatorImpl is null");
            return null;
        } catch (ClassNotFoundException e) {
            Constants$$ExternalSyntheticBUOutline0.m958m("Unable to find dynamic class com.google.android.gms.maps.internal.CreatorImpl", e);
            return null;
        }
    }

    private static Object zzf(Class cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            Constants$$ExternalSyntheticBUOutline0.m958m("Unable to call the default constructor of ".concat(cls.getName()), e);
            return null;
        } catch (InstantiationException e2) {
            Constants$$ExternalSyntheticBUOutline0.m958m("Unable to instantiate the dynamic class ".concat(cls.getName()), e2);
            return null;
        }
    }
}
