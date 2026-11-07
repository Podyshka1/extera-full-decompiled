package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.internal.mlkit_genai_prompt.zzawu;
import com.google.android.gms.internal.mlkit_genai_prompt.zzawy;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzawu<MessageType extends zzawy<MessageType, BuilderType>, BuilderType extends zzawu<MessageType, BuilderType>> extends zzavn<MessageType, BuilderType> {
    protected zzawy zza;
    private final zzawy zzb;

    public zzawu(MessageType messagetype) {
        this.zzb = messagetype;
        if (messagetype.zzE()) {
            f$$ExternalSyntheticBUOutline1.m215m("Default instance must be immutable.");
            throw null;
        }
        this.zza = messagetype.zzG();
    }

    private static void zza(zzawy zzawyVar, zzawy zzawyVar2) {
        zzayd.zza().zzb(zzawyVar.getClass()).zzd(zzawyVar, zzawyVar2);
    }

    public final void zzB() {
        if (this.zza.zzE()) {
            return;
        }
        zzC();
    }

    public void zzC() {
        zzawy zzawyVarZzG = this.zzb.zzG();
        zza(zzawyVarZzG, this.zza);
        this.zza = zzawyVarZzG;
    }

    /* JADX INFO: renamed from: zzE, reason: merged with bridge method [inline-methods] */
    public final zzawu clone() {
        zzawu zzawuVar = (zzawu) this.zzb.zzb(5, null, null);
        zzawuVar.zza = zzH();
        return zzawuVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaxv
    /* JADX INFO: renamed from: zzF, reason: merged with bridge method [inline-methods] */
    public MessageType zzH() {
        boolean zZzE = this.zza.zzE();
        MessageType messagetype = (MessageType) this.zza;
        if (!zZzE) {
            return messagetype;
        }
        messagetype.zzJ();
        return (MessageType) this.zza;
    }

    public final zzawu zzG(zzawy zzawyVar) {
        zzawy zzawyVar2 = this.zzb;
        if (!zzawyVar2.getClass().isInstance(zzawyVar)) {
            f$$ExternalSyntheticBUOutline1.m215m("mergeFrom(MessageLite) can only merge messages of the same type.");
            return null;
        }
        if (!zzawyVar2.equals(zzawyVar)) {
            if (!this.zza.zzE()) {
                zzC();
            }
            zza(this.zza, zzawyVar);
        }
        return this;
    }
}
