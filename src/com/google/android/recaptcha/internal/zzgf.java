package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.internal.zzge;
import com.google.android.recaptcha.internal.zzgf;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzgf<MessageType extends zzgf<MessageType, BuilderType>, BuilderType extends zzge<MessageType, BuilderType>> implements zzke {
    protected int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static void zzc(Iterable iterable, List list) {
        byte[] bArr = zzjc.zzd;
        iterable.getClass();
        if (iterable instanceof zzjm) {
            List listZzh = ((zzjm) iterable).zzh();
            zzjm zzjmVar = (zzjm) list;
            int size = list.size();
            for (Object obj : listZzh) {
                if (obj == null) {
                    String str = "Element at index " + (zzjmVar.size() - size) + " is null.";
                    int size2 = zzjmVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            f$$ExternalSyntheticBUOutline2.m179m(str);
                            return;
                        }
                        zzjmVar.remove(size2);
                    }
                } else if (obj instanceof zzgw) {
                    zzjmVar.zzi((zzgw) obj);
                } else {
                    zzjmVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzkm) {
            list.addAll(iterable);
            return;
        }
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
        }
        int size3 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        f$$ExternalSyntheticBUOutline2.m179m(str2);
                        return;
                    }
                    list.remove(size4);
                }
            } else {
                list.add(obj2);
            }
        }
    }

    public int zza(zzkr zzkrVar) {
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzke
    public final zzgw zzb() {
        try {
            int iZzn = zzn();
            zzgw zzgwVar = zzgw.zzb;
            byte[] bArr = new byte[iZzn];
            zzhh zzhhVarZzA = zzhh.zzA(bArr, 0, iZzn);
            zze(zzhhVarZzA);
            zzhhVarZzA.zzB();
            return new zzgt(bArr);
        } catch (IOException e) {
            zzgf$$ExternalSyntheticBUOutline0.m441m("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen).", e);
            return null;
        }
    }

    public final byte[] zzd() {
        try {
            int iZzn = zzn();
            byte[] bArr = new byte[iZzn];
            zzhh zzhhVarZzA = zzhh.zzA(bArr, 0, iZzn);
            zze(zzhhVarZzA);
            zzhhVarZzA.zzB();
            return bArr;
        } catch (IOException e) {
            zzgf$$ExternalSyntheticBUOutline0.m441m("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen).", e);
            return null;
        }
    }
}
