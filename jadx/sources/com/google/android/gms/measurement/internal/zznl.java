package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal.p025ws.RealWebSocket;

/* JADX INFO: loaded from: classes4.dex */
public final class zznl extends zzg {
    private final zznf zza;
    private zzgb zzb;
    private volatile Boolean zzc;
    private final zzay zzd;
    private ScheduledExecutorService zze;
    private final zzog zzf;
    private final List zzg;
    private final zzay zzh;

    protected zznl(zzic zzicVar) {
        super(zzicVar);
        this.zzg = new ArrayList();
        this.zzf = new zzog(zzicVar.zzaZ());
        this.zza = new zznf(this);
        this.zzd = new zzmm(this, zzicVar);
        this.zzh = new zzmq(this, zzicVar);
    }

    private final boolean zzad() {
        this.zzu.zzaU();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzae, reason: merged with bridge method [inline-methods] */
    public final void zzV() {
        zzg();
        this.zzf.zza();
        this.zzu.zzc();
        this.zzd.zzb(((Long) zzfy.zzY.zzb(null)).longValue());
    }

    private final void zzaf(Runnable runnable) {
        zzg();
        if (zzh()) {
            runnable.run();
            return;
        }
        List list = this.zzg;
        long size = list.size();
        zzic zzicVar = this.zzu;
        zzicVar.zzc();
        if (size >= 1000) {
            zzicVar.zzaV().zzb().zza("Discarding data. Max runnable queue size reached");
            return;
        }
        list.add(runnable);
        this.zzh.zzb(RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS);
        zzI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzag, reason: merged with bridge method [inline-methods] */
    public final void zzX() {
        zzg();
        zzgs zzgsVarZzk = this.zzu.zzaV().zzk();
        List list = this.zzg;
        zzgsVarZzk.zzb("Processing queued up service tasks", Integer.valueOf(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e) {
                this.zzu.zzaV().zzb().zzb("Task exception while flushing queue", e);
            }
        }
        this.zzg.clear();
        this.zzh.zzd();
    }

    private final zzr zzah(boolean z) {
        Pair pairZzb;
        zzic zzicVar = this.zzu;
        zzicVar.zzaU();
        zzgi zzgiVarZzv = this.zzu.zzv();
        String string = null;
        if (z) {
            zzic zzicVar2 = zzicVar.zzaV().zzu;
            if (zzicVar2.zzd().zzb != null && (pairZzb = zzicVar2.zzd().zzb.zzb()) != null && pairZzb != zzhh.zza) {
                String strValueOf = String.valueOf(pairZzb.second);
                String str = (String) pairZzb.first;
                StringBuilder sb = new StringBuilder(strValueOf.length() + 1 + String.valueOf(str).length());
                sb.append(strValueOf);
                sb.append(":");
                sb.append(str);
                string = sb.toString();
            }
        }
        return zzgiVarZzv.zzh(string);
    }

    protected final void zzA(zzpl zzplVar) {
        zzg();
        zzb();
        zzad();
        zzaf(new zzmg(this, zzah(true), this.zzu.zzm().zzj(zzplVar), zzplVar));
    }

    protected final void zzB() {
        zzg();
        zzb();
        zzr zzrVarZzah = zzah(false);
        zzad();
        this.zzu.zzm().zzh();
        zzaf(new zzmh(this, zzrVarZzah));
    }

    public final void zzC(AtomicReference atomicReference) {
        zzg();
        zzb();
        zzaf(new zzmi(this, atomicReference, zzah(false)));
    }

    public final void zzD(com.google.android.gms.internal.measurement.zzcu zzcuVar) {
        zzg();
        zzb();
        zzaf(new zzmj(this, zzah(false), zzcuVar));
    }

    protected final void zzE() {
        zzg();
        zzb();
        zzr zzrVarZzah = zzah(true);
        zzad();
        this.zzu.zzc().zzp(null, zzfy.zzbb);
        this.zzu.zzm().zzn();
        zzaf(new zzmk(this, zzrVarZzah, true));
    }

    protected final void zzF() {
        zzg();
        zzb();
        zzaf(new zzml(this, zzah(true)));
    }

    protected final void zzG(zzlu zzluVar) {
        zzg();
        zzb();
        zzaf(new zzmn(this, zzluVar));
    }

    public final void zzH(Bundle bundle) {
        zzg();
        zzb();
        zzbe zzbeVar = new zzbe(bundle);
        zzad();
        zzaf(new zzmo(this, true, zzah(false), this.zzu.zzc().zzp(null, zzfy.zzbb) && this.zzu.zzm().zzl(zzbeVar), zzbeVar, bundle));
    }

    final void zzI() {
        zzg();
        zzb();
        if (zzh()) {
            return;
        }
        if (zzK()) {
            this.zza.zzc();
            return;
        }
        zzic zzicVar = this.zzu;
        if (zzicVar.zzc().zzE()) {
            return;
        }
        zzicVar.zzaU();
        List<ResolveInfo> listQueryIntentServices = zzicVar.zzaY().getPackageManager().queryIntentServices(new Intent().setClassName(zzicVar.zzaY(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            zzicVar.zzaV().zzb().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        Context contextZzaY = zzicVar.zzaY();
        zzicVar.zzaU();
        intent.setComponent(new ComponentName(contextZzaY, "com.google.android.gms.measurement.AppMeasurementService"));
        this.zza.zza(intent);
    }

    final Boolean zzJ() {
        return this.zzc;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final boolean zzK() {
        zzg();
        zzb();
        if (this.zzc == null) {
            zzg();
            zzb();
            zzic zzicVar = this.zzu;
            zzhh zzhhVarZzd = zzicVar.zzd();
            zzhhVarZzd.zzg();
            boolean z = false;
            Boolean boolValueOf = !zzhhVarZzd.zzd().contains("use_service") ? null : Boolean.valueOf(zzhhVarZzd.zzd().getBoolean("use_service", false));
            if (boolValueOf == null || !boolValueOf.booleanValue()) {
                zzicVar.zzaU();
                if (this.zzu.zzv().zzo() == 1) {
                    z = true;
                    if (!z && zzicVar.zzc().zzE()) {
                        zzicVar.zzaV().zzb().zza("No way to upload. Consider using the full version of Analytics");
                    } else if (z) {
                        zzhh zzhhVarZzd2 = zzicVar.zzd();
                        zzhhVarZzd2.zzg();
                        SharedPreferences.Editor editorEdit = zzhhVarZzd2.zzd().edit();
                        editorEdit.putBoolean("use_service", z);
                        editorEdit.apply();
                    }
                    z = z;
                } else {
                    zzicVar.zzaV().zzk().zza("Checking service availability");
                    int iZzai = zzicVar.zzk().zzai(12451000);
                    if (iZzai != 0) {
                        if (iZzai == 1) {
                            zzicVar.zzaV().zzk().zza("Service missing");
                        } else if (iZzai != 2) {
                            if (iZzai == 3) {
                                zzicVar.zzaV().zze().zza("Service disabled");
                            } else if (iZzai == 9) {
                                zzicVar.zzaV().zze().zza("Service invalid");
                            } else if (iZzai != 18) {
                                zzicVar.zzaV().zze().zzb("Unexpected service status", Integer.valueOf(iZzai));
                            } else {
                                zzicVar.zzaV().zze().zza("Service updating");
                            }
                            z = false;
                        } else {
                            zzicVar.zzaV().zzj().zza("Service container out of date");
                            if (zzicVar.zzk().zzah() >= 17443) {
                                z = boolValueOf == null;
                                z = false;
                            }
                        }
                        if (!z) {
                            if (z) {
                            }
                            z = z;
                        }
                    } else {
                        zzicVar.zzaV().zzk().zza("Service available");
                    }
                    z = true;
                    if (!z) {
                    }
                }
            }
            this.zzc = Boolean.valueOf(z);
        }
        return this.zzc.booleanValue();
    }

    protected final void zzL(zzgb zzgbVar) {
        zzg();
        Preconditions.checkNotNull(zzgbVar);
        this.zzb = zzgbVar;
        zzV();
        zzX();
    }

    public final void zzM() {
        zzg();
        zzb();
        zznf zznfVar = this.zza;
        zznfVar.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(this.zzu.zzaY(), zznfVar);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzb = null;
    }

    public final void zzN(com.google.android.gms.internal.measurement.zzcu zzcuVar, zzbg zzbgVar, String str) {
        zzg();
        zzb();
        zzic zzicVar = this.zzu;
        if (zzicVar.zzk().zzai(12451000) == 0) {
            zzaf(new zzmp(this, zzbgVar, str, zzcuVar));
        } else {
            zzicVar.zzaV().zze().zza("Not bundling data. Service unavailable or out of date");
            zzicVar.zzk().zzao(zzcuVar, new byte[0]);
        }
    }

    final boolean zzO() {
        zzg();
        zzb();
        return !zzK() || this.zzu.zzk().zzah() >= ((Integer) zzfy.zzaJ.zzb(null)).intValue();
    }

    final boolean zzP() {
        zzg();
        zzb();
        return !zzK() || this.zzu.zzk().zzah() >= 241200;
    }

    final /* synthetic */ void zzQ() {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            this.zzu.zzaV().zzb().zza("Failed to send storage consent settings to service");
            return;
        }
        try {
            zzr zzrVarZzah = zzah(false);
            Preconditions.checkNotNull(zzrVarZzah);
            zzgbVar.zzy(zzrVarZzah);
            zzV();
        } catch (RemoteException e) {
            this.zzu.zzaV().zzb().zzb("Failed to send storage consent settings to the service", e);
        }
    }

    final /* synthetic */ void zzR() {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            this.zzu.zzaV().zzb().zza("Failed to send Dma consent settings to service");
            return;
        }
        try {
            zzr zzrVarZzah = zzah(false);
            Preconditions.checkNotNull(zzrVarZzah);
            zzgbVar.zzz(zzrVarZzah);
            zzV();
        } catch (RemoteException e) {
            this.zzu.zzaV().zzb().zzb("Failed to send Dma consent settings to the service", e);
        }
    }

    final /* synthetic */ void zzS(AtomicReference atomicReference, zzr zzrVar, Bundle bundle) {
        zzgb zzgbVar;
        synchronized (atomicReference) {
            try {
                zzgbVar = this.zzb;
            } catch (RemoteException e) {
                this.zzu.zzaV().zzb().zzb("Failed to request trigger URIs; remote exception", e);
                atomicReference.notifyAll();
            }
            if (zzgbVar == null) {
                this.zzu.zzaV().zzb().zza("Failed to request trigger URIs; not connected to service");
                return;
            }
            Preconditions.checkNotNull(zzrVar);
            zzgbVar.zzD(zzrVar, bundle, new zzme(this, atomicReference));
            zzV();
        }
    }

    final /* synthetic */ void zzT(AtomicReference atomicReference, zzr zzrVar, zzoo zzooVar) {
        zzgb zzgbVar;
        synchronized (atomicReference) {
            try {
                zzgbVar = this.zzb;
            } catch (RemoteException e) {
                this.zzu.zzaV().zzb().zzb("[sgtm] Failed to get upload batches; remote exception", e);
                atomicReference.notifyAll();
            }
            if (zzgbVar == null) {
                this.zzu.zzaV().zzb().zza("[sgtm] Failed to get upload batches; not connected to service");
                return;
            }
            Preconditions.checkNotNull(zzrVar);
            zzgbVar.zzB(zzrVar, zzooVar, new zzmf(this, atomicReference));
            zzV();
        }
    }

    final /* synthetic */ void zzU(zzr zzrVar, zzaf zzafVar) {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            this.zzu.zzaV().zzb().zza("[sgtm] Discarding data. Failed to update batch upload status.");
            return;
        }
        try {
            zzgbVar.zzC(zzrVar, zzafVar);
            zzV();
        } catch (RemoteException e) {
            this.zzu.zzaV().zzb().zzc("[sgtm] Failed to update batch upload status, rowId, exception", Long.valueOf(zzafVar.zza), e);
        }
    }

    final /* synthetic */ void zzW(ComponentName componentName) {
        zzg();
        if (this.zzb != null) {
            this.zzb = null;
            this.zzu.zzaV().zzk().zzb("Disconnected from device MeasurementService", componentName);
            zzg();
            zzI();
        }
    }

    final /* synthetic */ zznf zzY() {
        return this.zza;
    }

    final /* synthetic */ zzgb zzZ() {
        return this.zzb;
    }

    final /* synthetic */ void zzaa(zzgb zzgbVar) {
        this.zzb = null;
    }

    final /* synthetic */ ScheduledExecutorService zzab() {
        return this.zze;
    }

    final /* synthetic */ void zzac(ScheduledExecutorService scheduledExecutorService) {
        this.zze = scheduledExecutorService;
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    protected final boolean zze() {
        return false;
    }

    public final boolean zzh() {
        zzg();
        zzb();
        return this.zzb != null;
    }

    protected final void zzi() {
        zzg();
        zzb();
        zzaf(new zzmr(this, zzah(true)));
    }

    protected final void zzj(boolean z) {
        zzg();
        zzb();
        if (zzO()) {
            zzaf(new zzms(this, zzah(false)));
        }
    }

    protected final void zzk(boolean z) {
        zzg();
        zzb();
        zzaf(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznk
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzQ();
            }
        });
    }

    protected final void zzl() {
        zzg();
        zzb();
        zzaf(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzng
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzR();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzm(zzgb zzgbVar, AbstractSafeParcelable abstractSafeParcelable, zzr zzrVar) {
        zzic zzicVar;
        int i;
        zzr zzrVar2;
        String str;
        long jElapsedRealtime;
        long j;
        AbstractSafeParcelable abstractSafeParcelable2 = abstractSafeParcelable;
        zzg();
        zzb();
        zzad();
        zzic zzicVar2 = this.zzu;
        zzicVar2.zzc();
        zzr zzrVar3 = zzrVar;
        int size = 100;
        int i2 = 0;
        for (int i3 = 100; i2 < 1001 && size == i3; i3 = 100) {
            zzic zzicVar3 = this.zzu;
            ArrayList arrayList = new ArrayList();
            List listZzm = zzicVar3.zzm().zzm(i3);
            if (listZzm != null) {
                arrayList.addAll(listZzm);
                size = listZzm.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable2 != null && size < i3) {
                arrayList.add(new zzgk(abstractSafeParcelable2, zzrVar3.zzc, zzrVar3.zzj));
            }
            String str2 = null;
            boolean zZzp = zzicVar2.zzc().zzp(null, zzfy.zzaO);
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                zzgk zzgkVar = (zzgk) arrayList.get(i4);
                AbstractSafeParcelable abstractSafeParcelable3 = zzgkVar.zza;
                zzal zzalVarZzc = zzicVar2.zzc();
                zzfx zzfxVar = zzfy.zzbb;
                if (zzalVarZzc.zzp(str2, zzfxVar)) {
                    String str3 = zzgkVar.zzb;
                    if (TextUtils.isEmpty(str3)) {
                        zzicVar = zzicVar2;
                        i = i4;
                        zzrVar2 = zzrVar3;
                    } else {
                        i = i4;
                        zzicVar = zzicVar2;
                        zzrVar2 = new zzr(zzrVar3.zza, zzrVar3.zzb, str3, zzgkVar.zzc, zzrVar3.zzd, zzrVar3.zze, zzrVar3.zzf, zzrVar3.zzg, zzrVar3.zzh, zzrVar3.zzi, zzrVar3.zzk, zzrVar3.zzl, zzrVar3.zzm, zzrVar3.zzn, zzrVar3.zzo, zzrVar3.zzp, zzrVar3.zzq, zzrVar3.zzr, zzrVar3.zzs, zzrVar3.zzt, zzrVar3.zzu, zzrVar3.zzv, zzrVar3.zzw, zzrVar3.zzx, zzrVar3.zzy, zzrVar3.zzz, zzrVar3.zzA, zzrVar3.zzB, zzrVar3.zzC, zzrVar3.zzD, zzrVar3.zzE);
                    }
                }
                if (abstractSafeParcelable3 instanceof zzbg) {
                    if (zZzp) {
                        try {
                            zzic zzicVar4 = this.zzu;
                            long jCurrentTimeMillis = zzicVar4.zzaZ().currentTimeMillis();
                            try {
                                j = jCurrentTimeMillis;
                                jElapsedRealtime = zzicVar4.zzaZ().elapsedRealtime();
                            } catch (RemoteException e) {
                                e = e;
                                j = jCurrentTimeMillis;
                                jElapsedRealtime = 0;
                                this.zzu.zzaV().zzb().zzb("Failed to send event to the service", e);
                                if (zZzp && j != 0) {
                                    zzic zzicVar5 = this.zzu;
                                    zzgq.zza(zzicVar5).zzb(36301, 13, j, zzicVar5.zzaZ().currentTimeMillis(), (int) (zzicVar5.zzaZ().elapsedRealtime() - jElapsedRealtime));
                                }
                                str = null;
                                i4 = i + 1;
                                zzrVar3 = zzrVar2;
                                str2 = str;
                                zzicVar2 = zzicVar;
                            }
                        } catch (RemoteException e2) {
                            e = e2;
                            jElapsedRealtime = 0;
                            j = 0;
                        }
                    } else {
                        jElapsedRealtime = 0;
                        j = 0;
                    }
                    try {
                        zzgbVar.zze((zzbg) abstractSafeParcelable3, zzrVar2);
                        if (zZzp) {
                            zzicVar.zzaV().zzk().zza("Logging telemetry for logEvent from database");
                            zzic zzicVar6 = this.zzu;
                            zzgq.zza(zzicVar6).zzb(36301, 0, j, zzicVar6.zzaZ().currentTimeMillis(), (int) (zzicVar6.zzaZ().elapsedRealtime() - jElapsedRealtime));
                        }
                    } catch (RemoteException e3) {
                        e = e3;
                        this.zzu.zzaV().zzb().zzb("Failed to send event to the service", e);
                        if (zZzp) {
                            zzic zzicVar52 = this.zzu;
                            zzgq.zza(zzicVar52).zzb(36301, 13, j, zzicVar52.zzaZ().currentTimeMillis(), (int) (zzicVar52.zzaZ().elapsedRealtime() - jElapsedRealtime));
                        }
                    }
                } else if (abstractSafeParcelable3 instanceof zzpl) {
                    try {
                        zzgbVar.zzf((zzpl) abstractSafeParcelable3, zzrVar2);
                    } catch (RemoteException e4) {
                        this.zzu.zzaV().zzb().zzb("Failed to send user property to the service", e4);
                    }
                } else if (abstractSafeParcelable3 instanceof zzah) {
                    try {
                        zzgbVar.zzn((zzah) abstractSafeParcelable3, zzrVar2);
                    } catch (RemoteException e5) {
                        this.zzu.zzaV().zzb().zzb("Failed to send conditional user property to the service", e5);
                    }
                } else {
                    zzic zzicVar7 = this.zzu;
                    str = null;
                    if (zzicVar7.zzc().zzp(null, zzfxVar) && (abstractSafeParcelable3 instanceof zzbe)) {
                        try {
                            zzgbVar.zzu(((zzbe) abstractSafeParcelable3).zzf(), zzrVar2);
                        } catch (RemoteException e6) {
                            this.zzu.zzaV().zzb().zzb("Failed to send default event parameters to the service", e6);
                        }
                    } else {
                        zzicVar7.zzaV().zzb().zza("Discarding data. Unrecognized parcel type.");
                    }
                    i4 = i + 1;
                    zzrVar3 = zzrVar2;
                    str2 = str;
                    zzicVar2 = zzicVar;
                }
                str = null;
                i4 = i + 1;
                zzrVar3 = zzrVar2;
                str2 = str;
                zzicVar2 = zzicVar;
            }
            i2++;
            abstractSafeParcelable2 = abstractSafeParcelable;
        }
    }

    protected final void zzn(zzbg zzbgVar, String str) {
        Preconditions.checkNotNull(zzbgVar);
        zzg();
        zzb();
        zzad();
        zzaf(new zzmt(this, true, zzah(true), this.zzu.zzm().zzi(zzbgVar), zzbgVar, str));
    }

    protected final void zzp(zzah zzahVar) {
        Preconditions.checkNotNull(zzahVar);
        zzg();
        zzb();
        this.zzu.zzaU();
        zzaf(new zzmu(this, true, zzah(true), this.zzu.zzm().zzk(zzahVar), new zzah(zzahVar), zzahVar));
    }

    protected final void zzq(AtomicReference atomicReference, String str, String str2, String str3) {
        zzg();
        zzb();
        zzaf(new zzmv(this, atomicReference, null, str2, str3, zzah(false)));
    }

    protected final void zzs(com.google.android.gms.internal.measurement.zzcu zzcuVar, String str, String str2) {
        zzg();
        zzb();
        zzaf(new zzmw(this, str, str2, zzah(false), zzcuVar));
    }

    protected final void zzt(AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        zzg();
        zzb();
        zzaf(new zzmx(this, atomicReference, null, str2, str3, zzah(false), z));
    }

    protected final void zzu(com.google.android.gms.internal.measurement.zzcu zzcuVar, String str, String str2, boolean z) {
        zzg();
        zzb();
        zzaf(new zzmc(this, str, str2, zzah(false), z, zzcuVar));
    }

    protected final void zzw(final AtomicReference atomicReference, final Bundle bundle) {
        zzg();
        zzb();
        final zzr zzrVarZzah = zzah(false);
        zzaf(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznh
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzS(atomicReference, zzrVarZzah, bundle);
            }
        });
    }

    protected final void zzx(final AtomicReference atomicReference, final zzoo zzooVar) {
        zzg();
        zzb();
        final zzr zzrVarZzah = zzah(false);
        zzaf(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzni
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzT(atomicReference, zzrVarZzah, zzooVar);
            }
        });
    }

    protected final void zzy(final zzaf zzafVar) {
        zzg();
        zzb();
        final zzr zzrVarZzah = zzah(true);
        Preconditions.checkNotNull(zzrVarZzah);
        zzaf(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznj
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzU(zzrVarZzah, zzafVar);
            }
        });
    }

    protected final zzao zzz() {
        zzg();
        zzb();
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzI();
            this.zzu.zzaV().zzj().zza("Failed to get consents; not connected to service yet.");
            return null;
        }
        zzr zzrVarZzah = zzah(false);
        Preconditions.checkNotNull(zzrVarZzah);
        try {
            zzao zzaoVarZzw = zzgbVar.zzw(zzrVarZzah);
            zzV();
            return zzaoVarZzw;
        } catch (RemoteException e) {
            this.zzu.zzaV().zzb().zzb("Failed to get consents; remote exception", e);
            return null;
        }
    }
}
