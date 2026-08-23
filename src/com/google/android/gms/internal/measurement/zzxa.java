package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.AsyncFunction;
import java.util.HashMap;
import java.util.Random;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"TikTok.UnpropagatedTraceOnStartActivity"})
public abstract class zzxa {
    static {
        Math.abs(new Random().nextInt());
        new HashMap();
    }

    @JvmStatic
    public static final Runnable zza(Runnable runnable) {
        return new zzwz(new Ref.ObjectRef(), zzvy.zzb(false), runnable);
    }

    @JvmStatic
    public static final AsyncCallable zzb(AsyncCallable asyncCallable) {
        return new zzwx(zzvy.zzb(false), asyncCallable);
    }

    @JvmStatic
    public static final AsyncFunction zzc(AsyncFunction asyncFunction) {
        return new zzwy(zzvy.zzb(false), asyncFunction);
    }
}
