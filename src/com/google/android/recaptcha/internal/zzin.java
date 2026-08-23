package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.internal.zzin;
import com.google.android.recaptcha.internal.zzit;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class zzin<MessageType extends zzit<MessageType, BuilderType>, BuilderType extends zzin<MessageType, BuilderType>> extends zzge<MessageType, BuilderType> {
    protected zzit zza;
    private final zzit zzb;

    public zzin(MessageType messagetype) {
        this.zzb = messagetype;
        if (messagetype.zzG()) {
            f$$ExternalSyntheticBUOutline1.m178m("Default instance must be immutable.");
            throw null;
        }
        this.zza = messagetype.zzs();
    }

    private static void zzd(Object obj, Object obj2) {
        zzkn.zza().zzb(obj.getClass()).zzg(obj, obj2);
    }

    @Override // com.google.android.recaptcha.internal.zzkf
    public final /* synthetic */ zzke zzY() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzge
    public final /* synthetic */ zzge zzb(zzgf zzgfVar) {
        zzg((zzit) zzgfVar);
        return this;
    }

    @Override // com.google.android.recaptcha.internal.zzge
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzin zza() {
        zzin zzinVar = (zzin) this.zzb.zzh(5, null, null);
        zzinVar.zza = zzk();
        return zzinVar;
    }

    public final zzin zzg(zzit zzitVar) {
        if (!this.zzb.equals(zzitVar)) {
            if (!this.zza.zzG()) {
                zzn();
            }
            zzd(this.zza, zzitVar);
        }
        return this;
    }

    @Override // com.google.android.recaptcha.internal.zzkd
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final MessageType zzj() {
        MessageType messagetype = (MessageType) zzk();
        if (messagetype.zzo()) {
            return messagetype;
        }
        throw new zzlk(messagetype);
    }

    @Override // com.google.android.recaptcha.internal.zzkd
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public MessageType zzk() {
        boolean zZzG = this.zza.zzG();
        MessageType messagetype = (MessageType) this.zza;
        if (!zZzG) {
            return messagetype;
        }
        messagetype.zzB();
        return (MessageType) this.zza;
    }

    public final void zzm() {
        if (this.zza.zzG()) {
            return;
        }
        zzn();
    }

    public void zzn() {
        zzit zzitVarZzs = this.zzb.zzs();
        zzd(zzitVarZzs, this.zza);
        this.zza = zzitVarZzs;
    }

    @Override // com.google.android.recaptcha.internal.zzkf
    public final boolean zzo() {
        return zzit.zzF(this.zza, false);
    }
}
