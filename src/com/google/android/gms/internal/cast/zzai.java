package com.google.android.gms.internal.cast;

import android.content.Context;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionProvider;

/* JADX INFO: loaded from: classes.dex */
public final class zzai extends SessionProvider {
    private final CastOptions zza;
    private final zzbf zzb;

    public zzai(Context context, CastOptions castOptions, zzbf zzbfVar) {
        super(context, castOptions.getSupportedNamespaces().isEmpty() ? CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId()) : CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId(), castOptions.getSupportedNamespaces()));
        this.zza = castOptions;
        this.zzb = zzbfVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionProvider
    public final Session createSession(String str) {
        return new CastSession(getContext(), getCategory(), str, this.zza, this.zzb, new com.google.android.gms.cast.framework.media.internal.zzv(getContext(), this.zza, this.zzb));
    }

    @Override // com.google.android.gms.cast.framework.SessionProvider
    public final boolean isSessionRecoverable() {
        return this.zza.getResumeSavedSession();
    }
}
