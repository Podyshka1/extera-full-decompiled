package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.cast.zzwz$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.measurement.zzaca;
import com.google.android.gms.internal.measurement.zzacb;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzacb<MessageType extends zzacb<MessageType, BuilderType>, BuilderType extends zzaca<MessageType, BuilderType>> implements zzafc {
    protected transient int zza = 0;

    public static void zzcg(Iterable iterable, List list) {
        zzaca.zzaV(iterable, list);
    }

    public final byte[] zzcd() {
        try {
            int iZzcq = zzcq();
            byte[] bArr = new byte[iZzcq];
            int i = zzada.$r8$clinit;
            zzacx zzacxVar = new zzacx(bArr, 0, iZzcq);
            zzcH(zzacxVar);
            zzacxVar.zzH();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            zzwz$$ExternalSyntheticBUOutline0.m336m(name.length() + 72, name, " to a byte array threw an IOException (should never happen).", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final void zzce(OutputStream outputStream) {
        int iZzcq = zzcq();
        int i = zzada.$r8$clinit;
        if (iZzcq > 4096) {
            iZzcq = 4096;
        }
        zzacz zzaczVar = new zzacz(outputStream, iZzcq);
        zzcH(zzaczVar);
        zzaczVar.zzx();
    }

    public abstract int zzcf(zzafp zzafpVar);
}
