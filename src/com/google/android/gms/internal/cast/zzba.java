package com.google.android.gms.internal.cast;

import android.content.Context;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionProvider;

/* JADX INFO: loaded from: classes4.dex */
public final class zzba extends SessionProvider {
    private final CastOptions zza;
    private final zzbx zzb;

    public zzba(Context context, CastOptions castOptions, zzbx zzbxVar) {
        super(context, castOptions.getSupportedNamespaces().isEmpty() ? CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId()) : CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId(), castOptions.getSupportedNamespaces()));
        this.zza = castOptions;
        this.zzb = zzbxVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionProvider
    public final Session createSession(String str) {
        Context context = getContext();
        String category = getCategory();
        Context context2 = getContext();
        CastOptions castOptions = this.zza;
        zzbx zzbxVar = this.zzb;
        return new CastSession(context, category, str, castOptions, zzbxVar, new com.google.android.gms.cast.framework.media.internal.zzs(context2, castOptions, zzbxVar));
    }

    @Override // com.google.android.gms.cast.framework.SessionProvider
    public final boolean isSessionRecoverable() {
        return this.zza.getResumeSavedSession();
    }
}
