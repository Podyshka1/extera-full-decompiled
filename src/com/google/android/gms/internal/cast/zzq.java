package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzq {
    private final String zza;
    private final long zzb;
    private final int zzc;
    private final long zzd;
    private final long zze;
    private long zzf;

    public zzq(zzp zzpVar) {
        this.zza = zzpVar.zza;
        this.zzb = zzpVar.zzb;
        this.zzc = zzpVar.zzc;
        this.zzd = zzpVar.zzd;
        this.zze = zzpVar.zze;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zznq zza() {
        int i;
        String str = this.zza;
        zznp zznpVarZza = zznq.zza();
        switch (str.hashCode()) {
            case -1189611734:
                i = !str.equals("queueInsert") ? 1 : 13;
                break;
            case -1109843021:
                if (str.equals("launch")) {
                    i = 22;
                    break;
                }
                break;
            case -940430091:
                if (str.equals("queueRemove")) {
                    i = 15;
                    break;
                }
                break;
            case -936597225:
                if (str.equals("queueFetchItems")) {
                    i = 19;
                    break;
                }
                break;
            case -930425472:
                if (str.equals("setPlaybackDevices")) {
                    i = 23;
                    break;
                }
                break;
            case -921113364:
                if (str.equals("volume-mute")) {
                    i = 9;
                    break;
                }
                break;
            case -900560382:
                if (str.equals("skipAd")) {
                    i = 21;
                    break;
                }
                break;
            case -892481550:
                if (str.equals("status")) {
                    i = 10;
                    break;
                }
                break;
            case -844665542:
                if (str.equals("queueUpdate")) {
                    i = 14;
                    break;
                }
                break;
            case -810883302:
                if (str.equals("volume")) {
                    i = 7;
                    break;
                }
                break;
            case -402284771:
                if (str.equals("setPlaybackRate")) {
                    i = 20;
                    break;
                }
                break;
            case 3327206:
                if (str.equals("load")) {
                    i = 2;
                    break;
                }
                break;
            case 3363353:
                if (str.equals("mute")) {
                    i = 8;
                    break;
                }
                break;
            case 3443508:
                if (str.equals("play")) {
                    i = 3;
                    break;
                }
                break;
            case 3526264:
                if (str.equals("seek")) {
                    i = 6;
                    break;
                }
                break;
            case 3540994:
                if (str.equals("stop")) {
                    i = 5;
                    break;
                }
                break;
            case 106440182:
                if (str.equals("pause")) {
                    i = 4;
                    break;
                }
                break;
            case 525402049:
                if (str.equals("queueFetchItemRange")) {
                    i = 18;
                    break;
                }
                break;
            case 913357482:
                if (str.equals("queueReorder")) {
                    i = 16;
                    break;
                }
                break;
            case 1148867366:
                if (str.equals("trackStyle")) {
                    i = 12;
                    break;
                }
                break;
            case 1451542318:
                if (str.equals("activeTracks")) {
                    i = 11;
                    break;
                }
                break;
            case 1873161788:
                if (str.equals("queueFetchItemIds")) {
                    i = 17;
                    break;
                }
                break;
        }
        zznpVarZza.zze(i);
        zznpVarZza.zzb((int) this.zzb);
        zznpVarZza.zzd(this.zzc);
        zznpVarZza.zzc((int) (this.zzd - this.zzf));
        zznpVarZza.zza((int) (this.zze - this.zzf));
        return (zznq) zznpVarZza.zzq();
    }

    public final void zzb(long j) {
        this.zzf = j;
    }
}
