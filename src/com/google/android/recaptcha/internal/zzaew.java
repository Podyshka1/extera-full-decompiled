package com.google.android.recaptcha.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class zzaew {
    private final zzaev zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzaew(zzaev zzaevVar) {
        this.zza = zzaevVar;
        zzaevVar.zzd = this;
    }

    private final void zzO(int i) throws zzagj {
        if ((this.zzb & 7) == i) {
            return;
        }
        zzaew$$ExternalSyntheticBUOutline0.m478m();
    }

    private final void zzP(Object obj, zzahn zzahnVar, zzafh zzafhVar) throws zzagk {
        zzaev zzaevVar = this.zza;
        int iZzn = zzaevVar.zzn();
        zzaevVar.zzF();
        int iZzA = zzaevVar.zzA(iZzn);
        zzaevVar.zza++;
        zzahnVar.zzg(obj, this, zzafhVar);
        zzaevVar.zzb(0);
        zzaevVar.zza--;
        zzaevVar.zzB(iZzA);
    }

    private final void zzQ(Object obj, zzahn zzahnVar, zzafh zzafhVar) throws zzagk {
        zzaev zzaevVar = this.zza;
        zzaevVar.zzF();
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        zzaevVar.zzb++;
        try {
            zzahnVar.zzg(obj, this, zzafhVar);
            if (this.zzb == this.zzc) {
            } else {
                throw new zzagk("Failed to parse the message.");
            }
        } finally {
            zzaev zzaevVar2 = this.zza;
            zzaevVar2.zzb--;
            this.zzc = i;
        }
    }

    private final void zzR(int i) throws zzagk {
        if (this.zza.zzD() == i) {
            return;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m477m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    private static final void zzS(int i) throws zzagk {
        if ((i & 3) == 0) {
            return;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m477m("Failed to parse the message.");
    }

    private static final void zzT(int i) throws zzagk {
        if ((i & 7) == 0) {
            return;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m477m("Failed to parse the message.");
    }

    public static zzaew zza(zzaev zzaevVar) {
        Object obj = zzaevVar.zzd;
        return obj != null ? (zzaew) obj : new zzaew(zzaevVar);
    }

    public final void zzA(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzafw;
        int i = this.zzb;
        if (z) {
            zzafw zzafwVar = (zzafw) list;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzD = zzaevVar.zzD() + zzaevVar.zzn();
                do {
                    zzafwVar.zzh(zzaevVar.zzg());
                } while (zzaevVar.zzD() < iZzD);
                zzR(iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzafwVar.zzh(zzaevVar2.zzg());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzD2 = zzaevVar3.zzD() + zzaevVar3.zzn();
                do {
                    list.add(Integer.valueOf(zzaevVar3.zzg()));
                } while (zzaevVar3.zzD() < iZzD2);
                zzR(iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Integer.valueOf(zzaevVar4.zzg()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzB(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzagq;
        int i = this.zzb;
        if (z) {
            zzagq zzagqVar = (zzagq) list;
            int i2 = i & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzn = zzaevVar.zzn();
                zzT(iZzn);
                int iZzD = zzaevVar.zzD() + iZzn;
                do {
                    zzagqVar.zzf(zzaevVar.zzh());
                } while (zzaevVar.zzD() < iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzagqVar.zzf(zzaevVar2.zzh());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzn2 = zzaevVar3.zzn();
                zzT(iZzn2);
                int iZzD2 = zzaevVar3.zzD() + iZzn2;
                do {
                    list.add(Long.valueOf(zzaevVar3.zzh()));
                } while (zzaevVar3.zzD() < iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Long.valueOf(zzaevVar4.zzh()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzC(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzafw;
        int i = this.zzb;
        if (z) {
            zzafw zzafwVar = (zzafw) list;
            int i2 = i & 7;
            if (i2 == 2) {
                zzaev zzaevVar = this.zza;
                int iZzn = zzaevVar.zzn();
                zzS(iZzn);
                int iZzD = zzaevVar.zzD() + iZzn;
                do {
                    zzafwVar.zzh(zzaevVar.zzi());
                } while (zzaevVar.zzD() < iZzD);
                return;
            }
            if (i2 != 5) {
                zzaew$$ExternalSyntheticBUOutline0.m478m();
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzafwVar.zzh(zzaevVar2.zzi());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 == 2) {
                zzaev zzaevVar3 = this.zza;
                int iZzn2 = zzaevVar3.zzn();
                zzS(iZzn2);
                int iZzD2 = zzaevVar3.zzD() + iZzn2;
                do {
                    list.add(Integer.valueOf(zzaevVar3.zzi()));
                } while (zzaevVar3.zzD() < iZzD2);
                return;
            }
            if (i3 != 5) {
                zzaew$$ExternalSyntheticBUOutline0.m478m();
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Integer.valueOf(zzaevVar4.zzi()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzD(List list) throws zzagk {
        int iZza;
        if (list instanceof zzaei) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int i = this.zzb & 7;
            if (i == 0) {
                this.zza.zzj();
                throw null;
            }
            if (i != 2) {
                zzaew$$ExternalSyntheticBUOutline0.m478m();
                return;
            }
            zzaev zzaevVar = this.zza;
            zzaevVar.zzn();
            zzaevVar.zzD();
            zzaevVar.zzj();
            throw null;
        }
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzaev zzaevVar2 = this.zza;
                list.add(Boolean.valueOf(zzaevVar2.zzj()));
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar2.zza();
                }
            } while (iZza == this.zzb);
            this.zzd = iZza;
            return;
        }
        if (i2 != 2) {
            zzaew$$ExternalSyntheticBUOutline0.m478m();
            return;
        }
        zzaev zzaevVar3 = this.zza;
        int iZzD = zzaevVar3.zzD() + zzaevVar3.zzn();
        do {
            list.add(Boolean.valueOf(zzaevVar3.zzj()));
        } while (zzaevVar3.zzD() < iZzD);
        zzR(iZzD);
    }

    public final void zzE(List list, boolean z) throws zzagj {
        int iZza;
        int iZza2;
        if ((this.zzb & 7) != 2) {
            zzaew$$ExternalSyntheticBUOutline0.m478m();
            return;
        }
        if ((list instanceof zzagn) && !z) {
            zzagn zzagnVar = (zzagn) list;
            do {
                zzp();
                zzagnVar.zzb();
                zzaev zzaevVar = this.zza;
                if (zzaevVar.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            do {
                list.add(z ? zzm() : zzl());
                zzaev zzaevVar2 = this.zza;
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar2.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzF(List list, zzahn zzahnVar, zzafh zzafhVar) throws zzagk {
        int iZza;
        int i = this.zzb;
        if ((i & 7) != 2) {
            zzaew$$ExternalSyntheticBUOutline0.m478m();
            return;
        }
        do {
            Object objZza = zzahnVar.zza();
            zzP(objZza, zzahnVar, zzafhVar);
            zzahnVar.zzk(objZza);
            list.add(objZza);
            zzaev zzaevVar = this.zza;
            if (zzaevVar.zzC() || this.zzd != 0) {
                return;
            } else {
                iZza = zzaevVar.zza();
            }
        } while (iZza == i);
        this.zzd = iZza;
    }

    @Deprecated
    public final void zzG(List list, zzahn zzahnVar, zzafh zzafhVar) throws zzagk {
        int iZza;
        int i = this.zzb;
        if ((i & 7) != 3) {
            zzaew$$ExternalSyntheticBUOutline0.m478m();
            return;
        }
        do {
            Object objZza = zzahnVar.zza();
            zzQ(objZza, zzahnVar, zzafhVar);
            zzahnVar.zzk(objZza);
            list.add(objZza);
            zzaev zzaevVar = this.zza;
            if (zzaevVar.zzC() || this.zzd != 0) {
                return;
            } else {
                iZza = zzaevVar.zza();
            }
        } while (iZza == i);
        this.zzd = iZza;
    }

    public final void zzI(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzafw;
        int i = this.zzb;
        if (z) {
            zzafw zzafwVar = (zzafw) list;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzD = zzaevVar.zzD() + zzaevVar.zzn();
                do {
                    zzafwVar.zzh(zzaevVar.zzn());
                } while (zzaevVar.zzD() < iZzD);
                zzR(iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzafwVar.zzh(zzaevVar2.zzn());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzD2 = zzaevVar3.zzD() + zzaevVar3.zzn();
                do {
                    list.add(Integer.valueOf(zzaevVar3.zzn()));
                } while (zzaevVar3.zzD() < iZzD2);
                zzR(iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Integer.valueOf(zzaevVar4.zzn()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzJ(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzafw;
        int i = this.zzb;
        if (z) {
            zzafw zzafwVar = (zzafw) list;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzD = zzaevVar.zzD() + zzaevVar.zzn();
                do {
                    zzafwVar.zzh(zzaevVar.zzo());
                } while (zzaevVar.zzD() < iZzD);
                zzR(iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzafwVar.zzh(zzaevVar2.zzo());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzD2 = zzaevVar3.zzD() + zzaevVar3.zzn();
                do {
                    list.add(Integer.valueOf(zzaevVar3.zzo()));
                } while (zzaevVar3.zzD() < iZzD2);
                zzR(iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Integer.valueOf(zzaevVar4.zzo()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzK(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzafw;
        int i = this.zzb;
        if (z) {
            zzafw zzafwVar = (zzafw) list;
            int i2 = i & 7;
            if (i2 == 2) {
                zzaev zzaevVar = this.zza;
                int iZzn = zzaevVar.zzn();
                zzS(iZzn);
                int iZzD = zzaevVar.zzD() + iZzn;
                do {
                    zzafwVar.zzh(zzaevVar.zzp());
                } while (zzaevVar.zzD() < iZzD);
                return;
            }
            if (i2 != 5) {
                zzaew$$ExternalSyntheticBUOutline0.m478m();
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzafwVar.zzh(zzaevVar2.zzp());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 == 2) {
                zzaev zzaevVar3 = this.zza;
                int iZzn2 = zzaevVar3.zzn();
                zzS(iZzn2);
                int iZzD2 = zzaevVar3.zzD() + iZzn2;
                do {
                    list.add(Integer.valueOf(zzaevVar3.zzp()));
                } while (zzaevVar3.zzD() < iZzD2);
                return;
            }
            if (i3 != 5) {
                zzaew$$ExternalSyntheticBUOutline0.m478m();
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Integer.valueOf(zzaevVar4.zzp()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzL(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzagq;
        int i = this.zzb;
        if (z) {
            zzagq zzagqVar = (zzagq) list;
            int i2 = i & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzn = zzaevVar.zzn();
                zzT(iZzn);
                int iZzD = zzaevVar.zzD() + iZzn;
                do {
                    zzagqVar.zzf(zzaevVar.zzq());
                } while (zzaevVar.zzD() < iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzagqVar.zzf(zzaevVar2.zzq());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzn2 = zzaevVar3.zzn();
                zzT(iZzn2);
                int iZzD2 = zzaevVar3.zzD() + iZzn2;
                do {
                    list.add(Long.valueOf(zzaevVar3.zzq()));
                } while (zzaevVar3.zzD() < iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Long.valueOf(zzaevVar4.zzq()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzM(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzafw;
        int i = this.zzb;
        if (z) {
            zzafw zzafwVar = (zzafw) list;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzD = zzaevVar.zzD() + zzaevVar.zzn();
                do {
                    zzafwVar.zzh(zzaevVar.zzr());
                } while (zzaevVar.zzD() < iZzD);
                zzR(iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzafwVar.zzh(zzaevVar2.zzr());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzD2 = zzaevVar3.zzD() + zzaevVar3.zzn();
                do {
                    list.add(Integer.valueOf(zzaevVar3.zzr()));
                } while (zzaevVar3.zzD() < iZzD2);
                zzR(iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Integer.valueOf(zzaevVar4.zzr()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzN(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzagq;
        int i = this.zzb;
        if (z) {
            zzagq zzagqVar = (zzagq) list;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzD = zzaevVar.zzD() + zzaevVar.zzn();
                do {
                    zzagqVar.zzf(zzaevVar.zzs());
                } while (zzaevVar.zzD() < iZzD);
                zzR(iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzagqVar.zzf(zzaevVar2.zzs());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzD2 = zzaevVar3.zzD() + zzaevVar3.zzn();
                do {
                    list.add(Long.valueOf(zzaevVar3.zzs()));
                } while (zzaevVar3.zzD() < iZzD2);
                zzR(iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Long.valueOf(zzaevVar4.zzs()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final int zzb() {
        int iZza = this.zzd;
        if (iZza != 0) {
            this.zzb = iZza;
            this.zzd = 0;
        } else {
            iZza = this.zza.zza();
            this.zzb = iZza;
        }
        if (iZza == 0 || iZza == this.zzc) {
            return Integer.MAX_VALUE;
        }
        return iZza >>> 3;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final double zzd() throws zzagj {
        zzO(1);
        return this.zza.zzc();
    }

    public final float zze() throws zzagj {
        zzO(5);
        return this.zza.zzd();
    }

    public final long zzf() throws zzagj {
        zzO(0);
        return this.zza.zze();
    }

    public final long zzg() throws zzagj {
        zzO(0);
        return this.zza.zzf();
    }

    public final int zzh() throws zzagj {
        zzO(0);
        return this.zza.zzg();
    }

    public final long zzi() throws zzagj {
        zzO(1);
        return this.zza.zzh();
    }

    public final int zzj() throws zzagj {
        zzO(5);
        return this.zza.zzi();
    }

    public final boolean zzk() throws zzagj {
        zzO(0);
        return this.zza.zzj();
    }

    public final String zzl() throws zzagj {
        zzO(2);
        return this.zza.zzk();
    }

    public final String zzm() throws zzagj {
        zzO(2);
        return this.zza.zzl();
    }

    public final void zzn(Object obj, zzahn zzahnVar, zzafh zzafhVar) throws zzagk {
        zzO(2);
        zzP(obj, zzahnVar, zzafhVar);
    }

    public final void zzo(Object obj, zzahn zzahnVar, zzafh zzafhVar) throws zzagk {
        zzO(3);
        zzQ(obj, zzahnVar, zzafhVar);
    }

    public final zzaer zzp() throws zzagj {
        zzO(2);
        return this.zza.zzm();
    }

    public final int zzq() throws zzagj {
        zzO(0);
        return this.zza.zzn();
    }

    public final int zzr() throws zzagj {
        zzO(0);
        return this.zza.zzo();
    }

    public final int zzs() throws zzagj {
        zzO(5);
        return this.zza.zzp();
    }

    public final long zzt() throws zzagj {
        zzO(1);
        return this.zza.zzq();
    }

    public final int zzu() throws zzagj {
        zzO(0);
        return this.zza.zzr();
    }

    public final long zzv() throws zzagj {
        zzO(0);
        return this.zza.zzs();
    }

    public final void zzw(List list) throws zzagk {
        int iZza;
        if (list instanceof zzafc) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int i = this.zzb & 7;
            if (i == 1) {
                this.zza.zzc();
                throw null;
            }
            if (i != 2) {
                zzaew$$ExternalSyntheticBUOutline0.m478m();
                return;
            }
            zzaev zzaevVar = this.zza;
            zzT(zzaevVar.zzn());
            zzaevVar.zzD();
            zzaevVar.zzc();
            throw null;
        }
        int i2 = this.zzb & 7;
        if (i2 == 1) {
            do {
                zzaev zzaevVar2 = this.zza;
                list.add(Double.valueOf(zzaevVar2.zzc()));
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar2.zza();
                }
            } while (iZza == this.zzb);
            this.zzd = iZza;
            return;
        }
        if (i2 != 2) {
            zzaew$$ExternalSyntheticBUOutline0.m478m();
            return;
        }
        zzaev zzaevVar3 = this.zza;
        int iZzn = zzaevVar3.zzn();
        zzT(iZzn);
        int iZzD = zzaevVar3.zzD() + iZzn;
        do {
            list.add(Double.valueOf(zzaevVar3.zzc()));
        } while (zzaevVar3.zzD() < iZzD);
    }

    public final void zzx(List list) throws zzagk {
        int iZza;
        if (list instanceof zzafo) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int i = this.zzb & 7;
            if (i != 2) {
                if (i != 5) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                } else {
                    this.zza.zzd();
                    throw null;
                }
            }
            zzaev zzaevVar = this.zza;
            zzS(zzaevVar.zzn());
            zzaevVar.zzD();
            zzaevVar.zzd();
            throw null;
        }
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            zzaev zzaevVar2 = this.zza;
            int iZzn = zzaevVar2.zzn();
            zzS(iZzn);
            int iZzD = zzaevVar2.zzD() + iZzn;
            do {
                list.add(Float.valueOf(zzaevVar2.zzd()));
            } while (zzaevVar2.zzD() < iZzD);
            return;
        }
        if (i2 != 5) {
            zzaew$$ExternalSyntheticBUOutline0.m478m();
            return;
        }
        do {
            zzaev zzaevVar3 = this.zza;
            list.add(Float.valueOf(zzaevVar3.zzd()));
            if (zzaevVar3.zzC()) {
                return;
            } else {
                iZza = zzaevVar3.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    public final void zzy(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzagq;
        int i = this.zzb;
        if (z) {
            zzagq zzagqVar = (zzagq) list;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzD = zzaevVar.zzD() + zzaevVar.zzn();
                do {
                    zzagqVar.zzf(zzaevVar.zze());
                } while (zzaevVar.zzD() < iZzD);
                zzR(iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzagqVar.zzf(zzaevVar2.zze());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzD2 = zzaevVar3.zzD() + zzaevVar3.zzn();
                do {
                    list.add(Long.valueOf(zzaevVar3.zze()));
                } while (zzaevVar3.zzD() < iZzD2);
                zzR(iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Long.valueOf(zzaevVar4.zze()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzz(List list) throws zzagk {
        int iZza;
        int iZza2;
        boolean z = list instanceof zzagq;
        int i = this.zzb;
        if (z) {
            zzagq zzagqVar = (zzagq) list;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar = this.zza;
                int iZzD = zzaevVar.zzD() + zzaevVar.zzn();
                do {
                    zzagqVar.zzf(zzaevVar.zzf());
                } while (zzaevVar.zzD() < iZzD);
                zzR(iZzD);
                return;
            }
            do {
                zzaev zzaevVar2 = this.zza;
                zzagqVar.zzf(zzaevVar2.zzf());
                if (zzaevVar2.zzC()) {
                    return;
                } else {
                    iZza2 = zzaevVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    zzaew$$ExternalSyntheticBUOutline0.m478m();
                    return;
                }
                zzaev zzaevVar3 = this.zza;
                int iZzD2 = zzaevVar3.zzD() + zzaevVar3.zzn();
                do {
                    list.add(Long.valueOf(zzaevVar3.zzf()));
                } while (zzaevVar3.zzD() < iZzD2);
                zzR(iZzD2);
                return;
            }
            do {
                zzaev zzaevVar4 = this.zza;
                list.add(Long.valueOf(zzaevVar4.zzf()));
                if (zzaevVar4.zzC()) {
                    return;
                } else {
                    iZza = zzaevVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzH(List list) throws zzagj {
        int iZza;
        if ((this.zzb & 7) != 2) {
            zzaew$$ExternalSyntheticBUOutline0.m478m();
            return;
        }
        do {
            list.add(zzp());
            zzaev zzaevVar = this.zza;
            if (zzaevVar.zzC()) {
                return;
            } else {
                iZza = zzaevVar.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }
}
