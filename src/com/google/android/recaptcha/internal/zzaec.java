package com.google.android.recaptcha.internal;

import com.google.android.gms.internal.cast.zzwz$$ExternalSyntheticBUOutline0;
import com.google.android.recaptcha.internal.zzaeb;
import com.google.android.recaptcha.internal.zzaec;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaec<MessageType extends zzaec<MessageType, BuilderType>, BuilderType extends zzaeb<MessageType, BuilderType>> implements zzagx {
    protected transient int zzb = 0;

    public static void zzy(Iterable iterable, List list) {
        zzaeb.zzj(iterable, list);
    }

    public final zzaer zzv() {
        try {
            int iZzJ = zzJ();
            zzaer zzaerVar = zzaer.zza;
            byte[] bArr = new byte[iZzJ];
            zzaex zzaexVar = new zzaex(bArr, 0, iZzJ, null);
            zzI(zzaexVar);
            zzaexVar.zzw();
            return new zzaep(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            zzwz$$ExternalSyntheticBUOutline0.m336m(name.length() + 72, name, " to a ByteString threw an IOException (should never happen).", e);
            return null;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzagx
    public final byte[] zzw() {
        try {
            int iZzJ = zzJ();
            byte[] bArr = new byte[iZzJ];
            zzaex zzaexVar = new zzaex(bArr, 0, iZzJ, null);
            zzI(zzaexVar);
            zzaexVar.zzw();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            zzwz$$ExternalSyntheticBUOutline0.m336m(name.length() + 72, name, " to a byte array threw an IOException (should never happen).", e);
            return null;
        }
    }

    public abstract int zzx(zzahn zzahnVar);
}
