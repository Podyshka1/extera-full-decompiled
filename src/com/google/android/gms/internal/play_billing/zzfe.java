package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzfe;
import com.google.android.gms.internal.play_billing.zzfi;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzfe<MessageType extends zzfi<MessageType, BuilderType>, BuilderType extends zzfe<MessageType, BuilderType>> extends zzdr<MessageType, BuilderType> {
    protected zzfi zza;
    private final zzfi zzb;

    public zzfe(MessageType messagetype) {
        this.zzb = messagetype;
        if (messagetype.zzz()) {
            f$$ExternalSyntheticBUOutline1.m215m("Default instance must be immutable.");
            throw null;
        }
        this.zza = messagetype.zzo();
    }

    private static void zza(Object obj, Object obj2) {
        zzgs.zza().zzb(obj.getClass()).zzg(obj, obj2);
    }

    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzfe clone() {
        zzfe zzfeVar = (zzfe) this.zzb.zzb(5, null, null);
        zzfeVar.zza = zzg();
        return zzfeVar;
    }

    public final zzfe zzd(zzfi zzfiVar) {
        if (!this.zzb.equals(zzfiVar)) {
            if (!this.zza.zzz()) {
                zzj();
            }
            zza(this.zza, zzfiVar);
        }
        return this;
    }

    public final MessageType zze() {
        MessageType messagetype = (MessageType) zzg();
        if (messagetype.zzk()) {
            return messagetype;
        }
        throw new zzhg(messagetype);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgk
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public MessageType zzg() {
        boolean zZzz = this.zza.zzz();
        MessageType messagetype = (MessageType) this.zza;
        if (!zZzz) {
            return messagetype;
        }
        messagetype.zzu();
        return (MessageType) this.zza;
    }

    public final void zzi() {
        if (this.zza.zzz()) {
            return;
        }
        zzj();
    }

    public void zzj() {
        zzfi zzfiVarZzo = this.zzb.zzo();
        zza(zzfiVarZzo, this.zza);
        this.zza = zzfiVarZzo;
    }
}
