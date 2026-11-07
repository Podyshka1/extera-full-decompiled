package com.google.android.recaptcha.internal;

import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzahm extends zzaer {
    static final int[] zzb = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private final int zzc;
    private final zzaer zzd;
    private final zzaer zze;
    private final int zzf;
    private final int zzg;

    private zzahm(zzaer zzaerVar, zzaer zzaerVar2) {
        this.zzd = zzaerVar;
        this.zze = zzaerVar2;
        int iZzb = zzaerVar.zzb();
        this.zzf = iZzb;
        this.zzc = iZzb + zzaerVar2.zzb();
        this.zzg = Math.max(zzaerVar.zzo(), zzaerVar2.zzo()) + 1;
    }

    public /* synthetic */ zzahm(zzaer zzaerVar, zzaer zzaerVar2, byte[] bArr) {
        this(zzaerVar, zzaerVar2);
    }

    private static zzaer zzE(zzaer zzaerVar, zzaer zzaerVar2) {
        int iZzb = zzaerVar.zzb();
        int iZzb2 = zzaerVar2.zzb();
        byte[] bArr = new byte[iZzb + iZzb2];
        zzaerVar.zzx(bArr, 0, 0, iZzb);
        zzaerVar2.zzx(bArr, 0, iZzb, iZzb2);
        return zzaer.zzu(bArr);
    }

    public static zzaer zzj(zzaer zzaerVar, zzaer zzaerVar2) {
        if (zzaerVar2.zzb() == 0) {
            return zzaerVar;
        }
        if (zzaerVar.zzb() == 0) {
            return zzaerVar2;
        }
        int iZzb = zzaerVar.zzb() + zzaerVar2.zzb();
        if (iZzb < 128) {
            return zzE(zzaerVar, zzaerVar2);
        }
        if (zzaerVar instanceof zzahm) {
            zzahm zzahmVar = (zzahm) zzaerVar;
            zzaer zzaerVar3 = zzahmVar.zze;
            if (zzaerVar3.zzb() + zzaerVar2.zzb() < 128) {
                return new zzahm(zzahmVar.zzd, zzE(zzaerVar3, zzaerVar2));
            }
            zzaer zzaerVar4 = zzahmVar.zzd;
            if (zzaerVar4.zzo() > zzaerVar3.zzo() && zzahmVar.zzg > zzaerVar2.zzo()) {
                return new zzahm(zzaerVar4, new zzahm(zzaerVar3, zzaerVar2));
            }
        }
        return iZzb >= zzm(Math.max(zzaerVar.zzo(), zzaerVar2.zzo()) + 1) ? new zzahm(zzaerVar, zzaerVar2) : zzahk.zza(zzaerVar, zzaerVar2, new ArrayDeque());
    }

    public static int zzm(int i) {
        int[] iArr = zzb;
        int length = iArr.length;
        if (i >= 47) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // com.google.android.recaptcha.internal.zzaer, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzahj(this);
    }

    public final /* synthetic */ zzaer zzD() {
        return this.zze;
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final byte zza(int i) {
        int i2 = this.zzf;
        return i < i2 ? this.zzd.zza(i) : this.zze.zza(i - i2);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaer zzc(int i, int i2) {
        return zzd(i, i2);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaer zzd(int i, int i2) {
        int i3 = this.zzc;
        int iZzB = zzaer.zzB(i, i2, i3);
        if (iZzB == 0) {
            return zzaer.zza;
        }
        if (iZzB == i3) {
            return this;
        }
        int i4 = this.zzf;
        if (i2 <= i4) {
            return this.zzd.zzc(i, i2);
        }
        int i5 = i2 - i4;
        if (i >= i4) {
            return this.zze.zzc(i - i4, i5);
        }
        zzaer zzaerVar = this.zzd;
        return new zzahm(zzaerVar.zzc(i, zzaerVar.zzb()), this.zze.zzc(0, i5));
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.zzf;
        if (i4 <= i5) {
            this.zzd.zze(bArr, i, i2, i3);
        } else {
            if (i >= i5) {
                this.zze.zze(bArr, i - i5, i2, i3);
                return;
            }
            int i6 = i5 - i;
            this.zzd.zze(bArr, i, i2, i6);
            this.zze.zze(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final void zzg(zzaej zzaejVar) {
        this.zzd.zzg(zzaejVar);
        this.zze.zzg(zzaejVar);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final String zzh(Charset charset) {
        return new String(zzy(), charset);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final boolean zzi(zzaer zzaerVar) {
        byte[] bArr = null;
        zzahl zzahlVar = new zzahl(this, bArr);
        zzaeo zzaeoVarZza = zzahlVar.next();
        zzahl zzahlVar2 = new zzahl(zzaerVar, bArr);
        zzaeo zzaeoVarZza2 = zzahlVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int iZzb = zzaeoVarZza.zzb() - i;
            int iZzb2 = zzaeoVarZza2.zzb() - i2;
            int iMin = Math.min(iZzb, iZzb2);
            if (!(i == 0 ? zzaeoVarZza.zzj(zzaeoVarZza2, i2, iMin) : zzaeoVarZza2.zzj(zzaeoVarZza, i, iMin))) {
                return false;
            }
            i3 += iMin;
            int i4 = this.zzc;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                MethodWriter$$ExternalSyntheticBUOutline0.m959m();
                return false;
            }
            if (iMin == iZzb) {
                i = 0;
                zzaeoVarZza = zzahlVar.next();
            } else {
                i += iMin;
                zzaeoVarZza = zzaeoVarZza;
            }
            if (iMin == iZzb2) {
                zzaeoVarZza2 = zzahlVar2.next();
                i2 = 0;
            } else {
                i2 += iMin;
            }
        }
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final int zzk(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.zzf;
        if (i4 <= i5) {
            return this.zzd.zzk(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.zze.zzk(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.zze.zzk(this.zzd.zzk(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaev zzl() {
        ArrayList arrayList = new ArrayList();
        byte[] bArr = null;
        zzahl zzahlVar = new zzahl(this, bArr);
        while (zzahlVar.hasNext()) {
            arrayList.add(zzahlVar.next().zzf());
        }
        int i = zzaev.$r8$clinit;
        return new zzaeu(new zzagl(arrayList), 4096, bArr);
    }

    public final /* synthetic */ zzaer zzn() {
        return this.zzd;
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final int zzo() {
        return this.zzg;
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final boolean zzp() {
        return this.zzc >= zzm(this.zzg);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    /* JADX INFO: renamed from: zzq */
    public final zzaen iterator() {
        return new zzahj(this);
    }
}
