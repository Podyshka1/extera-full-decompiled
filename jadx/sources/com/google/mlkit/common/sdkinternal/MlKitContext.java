package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentRuntime;
import com.google.mlkit.common.internal.MlKitComponentDiscoveryService;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class MlKitContext {
    private static final Object zza = new Object();
    private static MlKitContext zzb;
    private ComponentRuntime zzc;

    private MlKitContext() {
    }

    public static MlKitContext getInstance() {
        MlKitContext mlKitContext;
        synchronized (zza) {
            Preconditions.checkState(zzb != null, "MlKitContext has not been initialized");
            mlKitContext = (MlKitContext) Preconditions.checkNotNull(zzb);
        }
        return mlKitContext;
    }

    public static MlKitContext zza(Context context) {
        MlKitContext mlKitContextZzb;
        synchronized (zza) {
            mlKitContextZzb = zzb(context, TaskExecutors.MAIN_THREAD);
        }
        return mlKitContextZzb;
    }

    public static MlKitContext zzb(Context context, Executor executor) {
        MlKitContext mlKitContext;
        synchronized (zza) {
            Preconditions.checkState(zzb == null, "MlKitContext is already initialized");
            MlKitContext mlKitContext2 = new MlKitContext();
            zzb = mlKitContext2;
            Context contextZzc = zzc(context);
            ComponentRuntime componentRuntimeBuild = ComponentRuntime.builder(executor).addLazyComponentRegistrars(ComponentDiscovery.forContext(contextZzc, MlKitComponentDiscoveryService.class).discoverLazy()).addComponent(Component.m499of(contextZzc, Context.class, new Class[0])).addComponent(Component.m499of(mlKitContext2, MlKitContext.class, new Class[0])).build();
            mlKitContext2.zzc = componentRuntimeBuild;
            componentRuntimeBuild.initializeEagerComponents(true);
            mlKitContext = zzb;
        }
        return mlKitContext;
    }

    private static Context zzc(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    public Object get(Class cls) {
        Preconditions.checkState(zzb == this, "MlKitContext has been deleted");
        Preconditions.checkNotNull(this.zzc);
        return this.zzc.get(cls);
    }

    public Context getApplicationContext() {
        return (Context) get(Context.class);
    }
}
