package com.google.android.recaptcha.internal;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzdz extends SuspendLambda implements Function2 {
    final /* synthetic */ zzea zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdz(zzea zzeaVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzeaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzdz(this.zza, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdz) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        Cursor cursorQuery = this.zza.zza.query(Uri.parse("content://com.google.android.gsf.gservices"), null, null, new String[]{"android_id"}, null);
        String strValueOf = _UrlKt.FRAGMENT_ENCODE_SET;
        if (cursorQuery != null && cursorQuery.moveToFirst() && cursorQuery.getColumnCount() >= 2) {
            try {
                strValueOf = String.valueOf(Long.parseLong(cursorQuery.getString(1)));
            } catch (Exception unused) {
            }
            cursorQuery.close();
        }
        if (strValueOf.length() == 0) {
            if (Build.VERSION.SDK_INT > 34) {
                throw new zzhg(zzhf.zzb, zzhe.zzP, null, null, 12, null);
            }
            throw new zzhg(zzhf.zzb, zzhe.zzQ, null, null, 12, null);
        }
        zzea zzeaVar = this.zza;
        zzaly zzalyVarZzb = zzamb.zzb();
        zzalz zzalzVarZza = zzama.zza();
        zzalzVarZza.zzc(strValueOf);
        zzalyVarZzb.zzc(CollectionsKt.listOf(zzalzVarZza.zzp()));
        return zzew.zza(zzeaVar, (zzamb) zzalyVarZzb.zzp());
    }
}
