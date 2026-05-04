package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzkr implements zznl {
    private static void zza(List list, int i) {
        int size = list.size() - i;
        StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 26);
        sb.append("Element at index ");
        sb.append(size);
        sb.append(" is null.");
        String string = sb.toString();
        int size2 = list.size();
        while (true) {
            size2--;
            if (size2 < i) {
                throw new NullPointerException(string);
            }
            list.remove(size2);
        }
    }

    protected static void zzaU(Iterable iterable, List list) {
        byte[] bArr = zzmp.zzb;
        iterable.getClass();
        if (iterable instanceof zzmx) {
            List listZza = ((zzmx) iterable).zza();
            zzmx zzmxVar = (zzmx) list;
            int size = list.size();
            for (Object obj : listZza) {
                if (obj == null) {
                    int size2 = zzmxVar.size() - size;
                    StringBuilder sb = new StringBuilder(String.valueOf(size2).length() + 26);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    int size3 = zzmxVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            throw new NullPointerException(string);
                        }
                        zzmxVar.remove(size3);
                    }
                } else if (obj instanceof zzlh) {
                    zzmxVar.zzb();
                } else if (obj instanceof byte[]) {
                    byte[] bArr2 = (byte[]) obj;
                    zzlh.zzh(bArr2, 0, bArr2.length);
                    zzmxVar.zzb();
                } else {
                    zzmxVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zznt) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size4 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size4);
            } else if (list instanceof zznv) {
                ((zznv) list).zze(list.size() + size4);
            }
        }
        int size5 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    zza(list, size5);
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size6 = list2.size();
        for (int i = 0; i < size6; i++) {
            Object obj3 = list2.get(i);
            if (obj3 == null) {
                zza(list, size5);
            }
            list.add(obj3);
        }
    }

    public abstract zzkr zzaS(byte[] bArr, int i, int i2);

    public abstract zzkr zzaT(byte[] bArr, int i, int i2, zzlr zzlrVar);

    @Override // com.google.android.gms.internal.measurement.zznl
    public final /* synthetic */ zznl zzaV(byte[] bArr, zzlr zzlrVar) {
        return zzaT(bArr, 0, bArr.length, zzlrVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznl
    public final /* synthetic */ zznl zzaW(byte[] bArr) {
        return zzaS(bArr, 0, bArr.length);
    }
}
