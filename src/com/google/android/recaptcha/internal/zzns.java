package com.google.android.recaptcha.internal;

import android.content.Context;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.ranges.CharRange;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzns implements zzne {
    private final Context zza;
    private final Mutex zzb = MutexKt.Mutex$default(false, 1, null);
    private final String zzc = "rce_";

    public zzns(Context context, zzop zzopVar) {
        this.zza = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zzne
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(String str, Continuation continuation) {
        zznp zznpVar;
        Mutex mutex;
        boolean z;
        File file;
        if (continuation instanceof zznp) {
            zznpVar = (zznp) continuation;
            int i = zznpVar.zzd;
            if ((i & Integer.MIN_VALUE) != 0) {
                zznpVar.zzd = i - Integer.MIN_VALUE;
            } else {
                zznpVar = new zznp(this, continuation);
            }
        }
        Object obj = zznpVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zznpVar.zzd;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            mutex = this.zzb;
            zznpVar.zze = str;
            zznpVar.zza = mutex;
            zznpVar.zzd = 1;
            if (mutex.lock(null, zznpVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) zznpVar.zza;
            String str2 = zznpVar.zze;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str2;
        }
        try {
            try {
                File cacheDir = this.zza.getCacheDir();
                String str3 = this.zzc;
                StringBuilder sb = new StringBuilder(str3.length() + String.valueOf(str).length());
                sb.append(str3);
                sb.append(str);
                file = new File(cacheDir, sb.toString());
            } catch (Exception unused) {
            }
            if (file.exists()) {
                z = file.delete();
            }
            return Boxing.boxBoolean(z);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // com.google.android.recaptcha.internal.zzoo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzb(String str, String str2, Continuation continuation) {
        zznr zznrVar;
        Mutex mutex;
        String str3;
        String str4;
        if (continuation instanceof zznr) {
            zznrVar = (zznr) continuation;
            int i = zznrVar.zzd;
            if ((i & Integer.MIN_VALUE) != 0) {
                zznrVar.zzd = i - Integer.MIN_VALUE;
            } else {
                zznrVar = new zznr(this, continuation);
            }
        }
        Object obj = zznrVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zznrVar.zzd;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.zzb;
            zznrVar.zze = str;
            zznrVar.zzf = str2;
            zznrVar.zza = mutex2;
            zznrVar.zzd = 1;
            if (mutex2.lock(null, zznrVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = mutex2;
            str3 = str;
            str4 = str2;
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutex = (Mutex) zznrVar.zza;
            str4 = zznrVar.zzf;
            str3 = zznrVar.zze;
            ResultKt.throwOnFailure(obj);
        }
        try {
            CharRange charRange = new CharRange('A', 'z');
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(charRange, 10));
            Iterator<Character> it = charRange.iterator();
            while (it.hasNext()) {
                arrayList.add(Boxing.boxChar(((CharIterator) it).nextChar()));
            }
            String strJoinToString$default = CollectionsKt.joinToString$default(CollectionsKt.shuffled(arrayList).subList(0, 8), _UrlKt.FRAGMENT_ENCODE_SET, null, null, 0, null, null, 62, null);
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + String.valueOf(strJoinToString$default).length());
            sb.append(str3);
            sb.append(strJoinToString$default);
            String string = sb.toString();
            Context context = this.zza;
            File cacheDir = context.getCacheDir();
            String str5 = this.zzc;
            StringBuilder sb2 = new StringBuilder(str5.length() + string.length());
            sb2.append(str5);
            sb2.append(string);
            File file = new File(cacheDir, sb2.toString());
            zzop.zzb(file, str4.getBytes(StandardCharsets.UTF_8));
            File cacheDir2 = context.getCacheDir();
            StringBuilder sb3 = new StringBuilder(str5.length() + String.valueOf(str3).length());
            sb3.append(str5);
            sb3.append(str3);
            file.renameTo(new File(cacheDir2, sb3.toString()));
            mutex.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zzoo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzc(String str, Continuation continuation) {
        zznq zznqVar;
        Mutex mutex;
        if (continuation instanceof zznq) {
            zznqVar = (zznq) continuation;
            int i = zznqVar.zzd;
            if ((i & Integer.MIN_VALUE) != 0) {
                zznqVar.zzd = i - Integer.MIN_VALUE;
            } else {
                zznqVar = new zznq(this, continuation);
            }
        }
        Object obj = zznqVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zznqVar.zzd;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            mutex = this.zzb;
            zznqVar.zze = str;
            zznqVar.zza = mutex;
            zznqVar.zzd = 1;
            if (mutex.lock(null, zznqVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) zznqVar.zza;
            String str2 = zznqVar.zze;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str2;
        }
        try {
            File cacheDir = this.zza.getCacheDir();
            String str3 = this.zzc;
            StringBuilder sb = new StringBuilder(str3.length() + String.valueOf(str).length());
            sb.append(str3);
            sb.append(str);
            File file = new File(cacheDir, sb.toString());
            return file.exists() ? new String(zzop.zza(file), StandardCharsets.UTF_8) : null;
        } finally {
            mutex.unlock(null);
        }
    }
}
