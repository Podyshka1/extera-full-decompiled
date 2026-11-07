package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.internal.zzafq;
import com.google.android.recaptcha.internal.zzafv;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzafq<MessageType extends zzafv<MessageType, BuilderType>, BuilderType extends zzafq<MessageType, BuilderType>> extends zzaeb<MessageType, BuilderType> {
    protected zzafv zza;
    private final zzafv zzb;

    public zzafq(MessageType messagetype) {
        this.zzb = messagetype;
        if (messagetype.zzz()) {
            f$$ExternalSyntheticBUOutline1.m215m("Default instance must be immutable.");
            throw null;
        }
        this.zza = messagetype.zzC();
    }

    private static void zza(zzafv zzafvVar, zzafv zzafvVar2) {
        zzahg.zza().zzb(zzafvVar.getClass()).zzd(zzafvVar, zzafvVar2);
    }

    @Override // com.google.android.recaptcha.internal.zzagy
    public final boolean zzab() {
        return zzafv.zzb(this.zza, false);
    }

    public final void zzk() {
        if (this.zza.zzz()) {
            return;
        }
        zzl();
    }

    public void zzl() {
        zzafv zzafvVarZzC = this.zzb.zzC();
        zza(zzafvVarZzC, this.zza);
        this.zza = zzafvVarZzC;
    }

    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzafq clone() {
        zzafq zzafqVar = (zzafq) this.zzb.zzf(5, null, null);
        zzafqVar.zza = zzr();
        return zzafqVar;
    }

    @Override // com.google.android.recaptcha.internal.zzagw
    /* JADX INFO: renamed from: zzo, reason: merged with bridge method [inline-methods] */
    public MessageType zzr() {
        boolean zZzz = this.zza.zzz();
        MessageType messagetype = (MessageType) this.zza;
        if (!zZzz) {
            return messagetype;
        }
        messagetype.zzE();
        return (MessageType) this.zza;
    }

    public final MessageType zzp() {
        MessageType messagetype = (MessageType) zzr();
        if (messagetype.zzab()) {
            return messagetype;
        }
        throw new zzahy(messagetype);
    }

    public final zzafq zzq(zzafv zzafvVar) {
        if (zzafvVar != null && !this.zzb.getClass().isInstance(zzafvVar)) {
            f$$ExternalSyntheticBUOutline1.m215m("mergeFrom(MessageLite) can only merge messages of the same type.");
            return null;
        }
        if (!this.zzb.equals(zzafvVar)) {
            if (!this.zza.zzz()) {
                zzl();
            }
            zza(this.zza, zzafvVar);
        }
        return this;
    }
}
