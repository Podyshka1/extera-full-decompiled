package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import okhttp3.internal.p025ws.RealWebSocket;
import org.telegram.messenger.MediaDataController;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpp extends zzjf {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final String[] zzb = {"firebase_", "google_", "ga_"};
    private static final String[] zzc = {"_err"};
    private SecureRandom zzd;
    private final AtomicLong zze;
    private int zzf;
    private MeasurementManagerFutures zzg;
    private Boolean zzh;
    private Integer zzi;

    zzpp(zzic zzicVar) {
        super(zzicVar);
        this.zzi = null;
        this.zze = new AtomicLong(0L);
    }

    static MessageDigest zzO() {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    static long zzP(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        int length = bArr.length;
        int i = 0;
        Preconditions.checkState(length > 0);
        long j = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            j += (((long) bArr[i2]) & 255) << i;
            i += 8;
        }
        return j;
    }

    static boolean zzQ(Context context, boolean z) {
        Preconditions.checkNotNull(context);
        return Build.VERSION.SDK_INT >= 24 ? zzR(context, "com.google.android.gms.measurement.AppMeasurementJobService") : zzR(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    static boolean zzR(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    static boolean zzZ(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    private static boolean zzaA(String str, String[] strArr) {
        Preconditions.checkNotNull(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean zzaf(String str) {
        return !zzc[0].equals(str);
    }

    public static ArrayList zzas(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzah zzahVar = (zzah) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzahVar.zza);
            bundle.putString("origin", zzahVar.zzb);
            bundle.putLong("creation_timestamp", zzahVar.zzd);
            bundle.putString("name", zzahVar.zzc.zzb);
            zzjh.zza(bundle, Preconditions.checkNotNull(zzahVar.zzc.zza()));
            bundle.putBoolean("active", zzahVar.zze);
            String str = zzahVar.zzf;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzbg zzbgVar = zzahVar.zzg;
            if (zzbgVar != null) {
                bundle.putString("timed_out_event_name", zzbgVar.zza);
                zzbe zzbeVar = zzbgVar.zzb;
                if (zzbeVar != null) {
                    bundle.putBundle("timed_out_event_params", zzbeVar.zzf());
                }
            }
            bundle.putLong("trigger_timeout", zzahVar.zzh);
            zzbg zzbgVar2 = zzahVar.zzi;
            if (zzbgVar2 != null) {
                bundle.putString("triggered_event_name", zzbgVar2.zza);
                zzbe zzbeVar2 = zzbgVar2.zzb;
                if (zzbeVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzbeVar2.zzf());
                }
            }
            bundle.putLong("triggered_timestamp", zzahVar.zzc.zzc);
            bundle.putLong("time_to_live", zzahVar.zzj);
            zzbg zzbgVar3 = zzahVar.zzk;
            if (zzbgVar3 != null) {
                bundle.putString("expired_event_name", zzbgVar3.zza);
                zzbe zzbeVar3 = zzbgVar3.zzb;
                if (zzbeVar3 != null) {
                    bundle.putBundle("expired_event_params", zzbeVar3.zzf());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    static boolean zzau(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static void zzav(zzlu zzluVar, Bundle bundle, boolean z) {
        if (bundle != null && zzluVar != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = zzluVar.zza;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = zzluVar.zzb;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", zzluVar.zzc);
                return;
            }
            z = false;
        }
        if (bundle != null && zzluVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    static final boolean zzax(Bundle bundle, int i) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    private final Object zzay(int i, Object obj, boolean z, boolean z2, String str) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return zzC(obj.toString(), i, z);
        }
        if (!z2 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleZzab = zzab((Bundle) parcelable, null);
                if (!bundleZzab.isEmpty()) {
                    arrayList.add(bundleZzab);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    private final int zzaz(String str) {
        if ("_ldl".equals(str)) {
            this.zzu.zzc();
            return 2048;
        }
        if ("_id".equals(str)) {
            this.zzu.zzc();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            this.zzu.zzc();
            return 100;
        }
        this.zzu.zzc();
        return 36;
    }

    static boolean zzh(String str) {
        Preconditions.checkNotEmpty(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    final boolean zzA(String str) {
        if (TextUtils.isEmpty(str)) {
            this.zzu.zzaV().zzd().zza("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        Preconditions.checkNotNull(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        this.zzu.zzaV().zzd().zzb("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzgu.zzl(str));
        return false;
    }

    final boolean zzB(String str, String str2) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        if (!zIsEmpty && !zIsEmpty2) {
            Preconditions.checkNotNull(str);
            if (!str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public final String zzC(String str, int i, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final int zzD(String str, String str2, String str3, Object obj, Bundle bundle, List list, boolean z, boolean z2) {
        int i;
        int size;
        zzg();
        if (!zzt(obj)) {
            i = 0;
        } else {
            if (!z2) {
                return 21;
            }
            if (!zzaA(str3, zzjn.zzc)) {
                return 20;
            }
            zznl zznlVarZzt = this.zzu.zzt();
            zznlVarZzt.zzg();
            zznlVarZzt.zzb();
            if (zznlVarZzt.zzK() && zznlVarZzt.zzu.zzk().zzah() < 200900) {
                return 25;
            }
            zzic zzicVar = this.zzu;
            zzicVar.zzc();
            boolean z3 = obj instanceof Parcelable[];
            if (z3) {
                size = ((Parcelable[]) obj).length;
            } else {
                if (obj instanceof ArrayList) {
                    size = ((ArrayList) obj).size();
                }
                i = 0;
            }
            if (size > 200) {
                zzicVar.zzaV().zzh().zzd("Parameter array is too long; discarded. Value kind, name, array length", "param", str3, Integer.valueOf(size));
                zzicVar.zzc();
                if (z3) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    if (parcelableArr.length > 200) {
                        bundle.putParcelableArray(str3, (Parcelable[]) Arrays.copyOf(parcelableArr, 200));
                    }
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList.size() > 200) {
                        bundle.putParcelableArrayList(str3, new ArrayList<>(arrayList.subList(0, 200)));
                    }
                }
                i = 17;
            }
        }
        if (!zzu("param", str3, (zzZ(str2) || zzZ(str3)) ? this.zzu.zzc().zzf(null, false) : this.zzu.zzc().zze(null, false), obj)) {
            if (!z2) {
                return 4;
            }
            if (obj instanceof Bundle) {
                zzz(str, str2, str3, (Bundle) obj, list, z);
                return i;
            }
            if (obj instanceof Parcelable[]) {
                for (Parcelable parcelable : (Parcelable[]) obj) {
                    if (!(parcelable instanceof Bundle)) {
                        this.zzu.zzaV().zzh().zzc("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str3);
                        return 4;
                    }
                    zzz(str, str2, str3, (Bundle) parcelable, list, z);
                }
            } else {
                if (!(obj instanceof ArrayList)) {
                    return 4;
                }
                ArrayList arrayList2 = (ArrayList) obj;
                int size2 = arrayList2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    Object obj2 = arrayList2.get(i2);
                    if (!(obj2 instanceof Bundle)) {
                        this.zzu.zzaV().zzh().zzc("All ArrayList elements must be of type Bundle. Value type, name", obj2 != null ? obj2.getClass() : "null", str3);
                        return 4;
                    }
                    zzz(str, str2, str3, (Bundle) obj2, list, z);
                }
            }
        }
        return i;
    }

    final Object zzE(String str, Object obj) {
        if ("_ev".equals(str)) {
            return zzay(this.zzu.zzc().zzf(null, false), obj, true, true, null);
        }
        return zzay(zzZ(str) ? this.zzu.zzc().zzf(null, false) : this.zzu.zzc().zze(null, false), obj, false, true, null);
    }

    final Bundle zzF(String str, String str2, Bundle bundle, List list, boolean z) {
        int iZzq;
        List list2 = list;
        boolean zZzaA = zzaA(str2, zzjm.zzd);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        zzic zzicVar = this.zzu;
        int iZzc = zzicVar.zzc().zzc();
        int i = 0;
        boolean z2 = false;
        for (String str3 : new TreeSet(bundle.keySet())) {
            if (list2 == null || !list2.contains(str3)) {
                iZzq = !z ? zzq(str3) : 0;
                if (iZzq == 0) {
                    iZzq = zzs(str3);
                }
            } else {
                iZzq = 0;
            }
            if (iZzq != 0) {
                zzJ(bundle2, iZzq, str3, iZzq == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int iZzD = zzD(str, str2, str3, bundle.get(str3), bundle2, list2, z, zZzaA);
                if (iZzD == 17) {
                    zzJ(bundle2, 17, str3, Boolean.FALSE);
                } else if (iZzD != 0 && !"_ev".equals(str3)) {
                    zzJ(bundle2, iZzD, iZzD == 21 ? str2 : str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (zzh(str3) && (i = i + 1) > iZzc) {
                    if (!zzicVar.zzc().zzp(null, zzfy.zzbe) || !z2) {
                        StringBuilder sb = new StringBuilder(String.valueOf(iZzc).length() + 37);
                        sb.append("Event can't contain more than ");
                        sb.append(iZzc);
                        sb.append(" params");
                        zzicVar.zzaV().zzd().zzc(sb.toString(), zzicVar.zzl().zza(str2), zzicVar.zzl().zze(bundle));
                    }
                    zzax(bundle2, 5);
                    bundle2.remove(str3);
                    z2 = true;
                }
            }
            list2 = list;
        }
        return bundle2;
    }

    final void zzG(zzgv zzgvVar, int i) {
        Bundle bundle = zzgvVar.zzd;
        int i2 = 0;
        boolean z = false;
        for (String str : new TreeSet(bundle.keySet())) {
            if (zzh(str) && (i2 = i2 + 1) > i) {
                zzic zzicVar = this.zzu;
                if (!zzicVar.zzc().zzp(null, zzfy.zzbe) || !z) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 37);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    zzicVar.zzaV().zzd().zzc(sb.toString(), zzicVar.zzl().zza(zzgvVar.zza), zzicVar.zzl().zze(bundle));
                    zzax(bundle, 5);
                }
                bundle.remove(str);
                z = true;
            }
        }
    }

    final void zzH(Parcelable[] parcelableArr, int i) {
        Preconditions.checkNotNull(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            int i2 = 0;
            boolean z = false;
            for (String str : new TreeSet(bundle.keySet())) {
                if (zzh(str) && !zzaA(str, zzjn.zzd) && (i2 = i2 + 1) > i) {
                    zzic zzicVar = this.zzu;
                    if (!zzicVar.zzc().zzp(null, zzfy.zzbe) || !z) {
                        zzgs zzgsVarZzd = zzicVar.zzaV().zzd();
                        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 60);
                        sb.append("Param can't contain more than ");
                        sb.append(i);
                        sb.append(" item-scoped custom parameters");
                        zzgsVarZzd.zzc(sb.toString(), zzicVar.zzl().zzb(str), zzicVar.zzl().zze(bundle));
                    }
                    zzax(bundle, 28);
                    bundle.remove(str);
                    z = true;
                }
            }
        }
    }

    final void zzI(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.zzu.zzk().zzM(bundle, str, bundle2.get(str));
            }
        }
    }

    final void zzJ(Bundle bundle, int i, String str, Object obj) {
        if (zzax(bundle, i)) {
            this.zzu.zzc();
            bundle.putString("_ev", zzC(str, 40, true));
            if (obj != null) {
                Preconditions.checkNotNull(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    final int zzK(String str, Object obj) {
        return "_ldl".equals(str) ? zzu("user property referrer", str, zzaz(str), obj) : zzu("user property", str, zzaz(str), obj) ? 0 : 7;
    }

    final Object zzL(String str, Object obj) {
        return "_ldl".equals(str) ? zzay(zzaz(str), obj, true, false, null) : zzay(zzaz(str), obj, false, false, null);
    }

    final void zzM(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            zzic zzicVar = this.zzu;
            zzicVar.zzaV().zzh().zzc("Not putting event parameter. Invalid value type. name, type", zzicVar.zzl().zzb(str), simpleName);
        }
    }

    final void zzN(zzpo zzpoVar, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        zzax(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        zzpoVar.zza(str, "_err", bundle);
    }

    final boolean zzS() {
        zzg();
        return zzV() == 1;
    }

    final MeasurementManagerFutures zzT() {
        if (this.zzg == null) {
            this.zzg = MeasurementManagerFutures.from(this.zzu.zzaY());
        }
        return this.zzg;
    }

    final int zzU() {
        if (Build.VERSION.SDK_INT < 30 || SdkExtensions.getExtensionVersion(30) <= 3) {
            return 0;
        }
        return SdkExtensions.getExtensionVersion(1000000);
    }

    final long zzV() {
        long j;
        zzg();
        if (!zzX(this.zzu.zzv().zzj())) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT < 30) {
            j = 4;
        } else if (SdkExtensions.getExtensionVersion(30) < 4) {
            j = 8;
        } else {
            zzic zzicVar = this.zzu;
            int iZzU = zzU();
            zzicVar.zzc();
            j = iZzU < ((Integer) zzfy.zzal.zzb(null)).intValue() ? 16L : 0L;
        }
        if (!zzY("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")) {
            j |= 2;
        }
        if (j == 0 && !zzW()) {
            j = 64;
        }
        if (j == 0) {
            return 1L;
        }
        return j;
    }

    final boolean zzW() {
        Object e;
        Integer num;
        if (this.zzh == null) {
            MeasurementManagerFutures measurementManagerFuturesZzT = zzT();
            boolean z = false;
            if (measurementManagerFuturesZzT == null) {
                return false;
            }
            try {
                num = (Integer) measurementManagerFuturesZzT.getMeasurementApiStatusAsync().get(10000L, TimeUnit.MILLISECONDS);
                if (num != null) {
                    try {
                        if (num.intValue() == 1) {
                            z = true;
                        }
                    } catch (InterruptedException e2) {
                        e = e2;
                        this.zzu.zzaV().zze().zzb("Measurement manager api exception", e);
                        this.zzh = Boolean.FALSE;
                    } catch (CancellationException e3) {
                        e = e3;
                        this.zzu.zzaV().zze().zzb("Measurement manager api exception", e);
                        this.zzh = Boolean.FALSE;
                    } catch (ExecutionException e4) {
                        e = e4;
                        this.zzu.zzaV().zze().zzb("Measurement manager api exception", e);
                        this.zzh = Boolean.FALSE;
                    } catch (TimeoutException e5) {
                        e = e5;
                        this.zzu.zzaV().zze().zzb("Measurement manager api exception", e);
                        this.zzh = Boolean.FALSE;
                    }
                }
                this.zzh = Boolean.valueOf(z);
            } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException e6) {
                e = e6;
                num = null;
            }
            this.zzu.zzaV().zzk().zzb("Measurement manager api status result", num);
        }
        return this.zzh.booleanValue();
    }

    final boolean zzX(String str) {
        String str2 = (String) zzfy.zzar.zzb(null);
        return str2.equals("*") || Arrays.asList(str2.split(",")).contains(str);
    }

    final boolean zzY(String str) {
        zzg();
        zzic zzicVar = this.zzu;
        if (Wrappers.packageManager(zzicVar.zzaY()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzicVar.zzaV().zzj().zzb("Permission not granted", str);
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzjf
    protected final boolean zza() {
        return true;
    }

    final boolean zzaa(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        zzic zzicVar = this.zzu;
        String strZzA = zzicVar.zzc().zzA();
        zzicVar.zzaU();
        return strZzA.equals(str);
    }

    final Bundle zzab(Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str2 : bundle.keySet()) {
                Object objZzE = zzE(str2, bundle.get(str2));
                if (objZzE == null) {
                    zzic zzicVar = this.zzu;
                    zzicVar.zzaV().zzh().zzb("Param value can't be null", zzicVar.zzl().zzb(str2));
                } else {
                    zzM(bundle2, str2, objZzE);
                }
            }
        }
        return bundle2;
    }

    final zzbg zzac(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (zzn(str2) != 0) {
            zzic zzicVar = this.zzu;
            zzicVar.zzaV().zzb().zzb("Invalid conditional property event name", zzicVar.zzl().zzc(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle bundleZzF = zzF(str, str2, bundle2, CollectionUtils.listOf("_o"), true);
        if (z) {
            bundleZzF = zzab(bundleZzF, str);
        }
        Preconditions.checkNotNull(bundleZzF);
        return new zzbg(str2, new zzbe(bundleZzF), str3, j);
    }

    final boolean zzad(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            this.zzu.zzaV().zzb().zzb("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.zzu.zzaV().zzb().zzb("Error obtaining certificate", e2);
            return true;
        }
    }

    final byte[] zzae(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public final boolean zzag(int i, boolean z) {
        Boolean boolZzJ = this.zzu.zzt().zzJ();
        if (zzah() < i / MediaDataController.MAX_STYLE_RUNS_COUNT) {
            return (boolZzJ == null || boolZzJ.booleanValue()) ? false : true;
        }
        return true;
    }

    public final int zzah() {
        if (this.zzi == null) {
            this.zzi = Integer.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzu.zzaY()) / MediaDataController.MAX_STYLE_RUNS_COUNT);
        }
        return this.zzi.intValue();
    }

    public final int zzai(int i) {
        return GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(this.zzu.zzaY(), 12451000);
    }

    public final long zzaj(long j, long j2) {
        return (j + (j2 * RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS)) / 86400000;
    }

    final void zzak(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.zzu.zzaV().zze().zzb("Params already contained engagement", Long.valueOf(j2));
        } else {
            j2 = 0;
        }
        bundle.putLong("_et", j + j2);
    }

    public final void zzal(com.google.android.gms.internal.measurement.zzcu zzcuVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzu.zzaV().zze().zzb("Error returning string value to wrapper", e);
        }
    }

    public final void zzam(com.google.android.gms.internal.measurement.zzcu zzcuVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzu.zzaV().zze().zzb("Error returning long value to wrapper", e);
        }
    }

    public final void zzan(com.google.android.gms.internal.measurement.zzcu zzcuVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzu.zzaV().zze().zzb("Error returning int value to wrapper", e);
        }
    }

    public final void zzao(com.google.android.gms.internal.measurement.zzcu zzcuVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzu.zzaV().zze().zzb("Error returning byte array to wrapper", e);
        }
    }

    public final void zzap(com.google.android.gms.internal.measurement.zzcu zzcuVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzu.zzaV().zze().zzb("Error returning boolean value to wrapper", e);
        }
    }

    public final void zzaq(com.google.android.gms.internal.measurement.zzcu zzcuVar, Bundle bundle) {
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzu.zzaV().zze().zzb("Error returning bundle value to wrapper", e);
        }
    }

    public final void zzar(com.google.android.gms.internal.measurement.zzcu zzcuVar, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzcuVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzu.zzaV().zze().zzb("Error returning bundle list to wrapper", e);
        }
    }

    public final URL zzat(long j, String str, String str2, long j2, String str3) {
        try {
            Preconditions.checkNotEmpty(str2);
            Preconditions.checkNotEmpty(str);
            String strConcat = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 133005L, Integer.valueOf(zzah())), str2, str, Long.valueOf(j2));
            if (str.equals(this.zzu.zzc().zzB())) {
                strConcat = strConcat.concat("&ddl_test=1");
            }
            if (!str3.isEmpty()) {
                if (str3.charAt(0) != '&') {
                    strConcat = strConcat.concat("&");
                }
                strConcat = strConcat.concat(str3);
            }
            return new URL(strConcat);
        } catch (IllegalArgumentException e) {
            e = e;
            this.zzu.zzaV().zzb().zzb("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        } catch (MalformedURLException e2) {
            e = e2;
            this.zzu.zzaV().zzb().zzb("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    final String zzaw() {
        byte[] bArr = new byte[16];
        zzf().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    @Override // com.google.android.gms.measurement.internal.zzjf
    protected final void zzba() {
        zzg();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                this.zzu.zzaV().zze().zza("Utils falling back to Random for random id");
            }
        }
        this.zze.set(jNextLong);
    }

    public final long zzd() {
        long andIncrement;
        long j;
        AtomicLong atomicLong = this.zze;
        if (atomicLong.get() != 0) {
            AtomicLong atomicLong2 = this.zze;
            synchronized (atomicLong2) {
                atomicLong2.compareAndSet(-1L, 1L);
                andIncrement = atomicLong2.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (atomicLong) {
            long jNextLong = new Random(System.nanoTime() ^ this.zzu.zzaZ().currentTimeMillis()).nextLong();
            int i = this.zzf + 1;
            this.zzf = i;
            j = jNextLong + ((long) i);
        }
        return j;
    }

    final SecureRandom zzf() {
        zzg();
        if (this.zzd == null) {
            this.zzd = new SecureRandom();
        }
        return this.zzd;
    }

    final Bundle zzi(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        String queryParameter7;
        String queryParameter8;
        String queryParameter9;
        String str;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                queryParameter = uri.getQueryParameter("utm_campaign");
                queryParameter2 = uri.getQueryParameter("utm_source");
                queryParameter3 = uri.getQueryParameter("utm_medium");
                queryParameter4 = uri.getQueryParameter("gclid");
                queryParameter5 = uri.getQueryParameter("gbraid");
                queryParameter6 = uri.getQueryParameter("utm_id");
                queryParameter7 = uri.getQueryParameter("dclid");
                queryParameter8 = uri.getQueryParameter("srsltid");
                queryParameter9 = uri.getQueryParameter("sfmc_id");
            } else {
                queryParameter = null;
                queryParameter2 = null;
                queryParameter3 = null;
                queryParameter4 = null;
                queryParameter5 = null;
                queryParameter6 = null;
                queryParameter7 = null;
                queryParameter8 = null;
                queryParameter9 = null;
            }
            if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4) && TextUtils.isEmpty(queryParameter5) && TextUtils.isEmpty(queryParameter6) && TextUtils.isEmpty(queryParameter7) && TextUtils.isEmpty(queryParameter8) && TextUtils.isEmpty(queryParameter9)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (TextUtils.isEmpty(queryParameter)) {
                str = "sfmc_id";
            } else {
                str = "sfmc_id";
                bundle.putString("campaign", queryParameter);
            }
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("source", queryParameter2);
            }
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("medium", queryParameter3);
            }
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("gclid", queryParameter4);
            }
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("gbraid", queryParameter5);
            }
            String queryParameter10 = uri.getQueryParameter("gad_source");
            if (!TextUtils.isEmpty(queryParameter10)) {
                bundle.putString("gad_source", queryParameter10);
            }
            String queryParameter11 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter11)) {
                bundle.putString("term", queryParameter11);
            }
            String queryParameter12 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter12)) {
                bundle.putString("content", queryParameter12);
            }
            String queryParameter13 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter13)) {
                bundle.putString("aclid", queryParameter13);
            }
            String queryParameter14 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter14)) {
                bundle.putString("cp1", queryParameter14);
            }
            String queryParameter15 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter15)) {
                bundle.putString("anid", queryParameter15);
            }
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString("campaign_id", queryParameter6);
            }
            if (!TextUtils.isEmpty(queryParameter7)) {
                bundle.putString("dclid", queryParameter7);
            }
            String queryParameter16 = uri.getQueryParameter("utm_source_platform");
            if (!TextUtils.isEmpty(queryParameter16)) {
                bundle.putString("source_platform", queryParameter16);
            }
            String queryParameter17 = uri.getQueryParameter("utm_creative_format");
            if (!TextUtils.isEmpty(queryParameter17)) {
                bundle.putString("creative_format", queryParameter17);
            }
            String queryParameter18 = uri.getQueryParameter("utm_marketing_tactic");
            if (!TextUtils.isEmpty(queryParameter18)) {
                bundle.putString("marketing_tactic", queryParameter18);
            }
            if (!TextUtils.isEmpty(queryParameter8)) {
                bundle.putString("srsltid", queryParameter8);
            }
            if (!TextUtils.isEmpty(queryParameter9)) {
                bundle.putString(str, queryParameter9);
            }
            for (String str2 : uri.getQueryParameterNames()) {
                if (str2.startsWith("gad_")) {
                    String queryParameter19 = uri.getQueryParameter(str2);
                    if (!TextUtils.isEmpty(queryParameter19)) {
                        bundle.putString(str2, queryParameter19);
                    }
                }
            }
            return bundle;
        } catch (UnsupportedOperationException e) {
            this.zzu.zzaV().zze().zzb("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    final boolean zzj(String str, String str2) {
        if (str2 == null) {
            this.zzu.zzaV().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.zzu.zzaV().zzd().zzb("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            this.zzu.zzaV().zzd().zzc("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                this.zzu.zzaV().zzd().zzc("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    final boolean zzk(String str, String str2) {
        if (str2 == null) {
            this.zzu.zzaV().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.zzu.zzaV().zzd().zzb("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            if (iCodePointAt != 95) {
                this.zzu.zzaV().zzd().zzc("Name must start with a letter or _ (underscore). Type, name", str, str2);
                return false;
            }
            iCodePointAt = 95;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                this.zzu.zzaV().zzd().zzc("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    final boolean zzl(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.zzu.zzaV().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.checkNotNull(str2);
        String[] strArr3 = zzb;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.zzu.zzaV().zzd().zzc("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !zzaA(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && zzaA(str2, strArr2)) {
            return true;
        }
        this.zzu.zzaV().zzd().zzc("Name is reserved. Type, name", str, str2);
        return false;
    }

    final boolean zzm(String str, int i, String str2) {
        if (str2 == null) {
            this.zzu.zzaV().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        }
        this.zzu.zzaV().zzd().zzd("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
        return false;
    }

    final int zzn(String str) {
        if (!zzk("event", str)) {
            return 2;
        }
        if (!zzl("event", zzjm.zza, zzjm.zzb, str)) {
            return 13;
        }
        this.zzu.zzc();
        return !zzm("event", 40, str) ? 2 : 0;
    }

    final int zzp(String str) {
        if (!zzk("user property", str)) {
            return 6;
        }
        if (!zzl("user property", zzjo.zza, null, str)) {
            return 15;
        }
        this.zzu.zzc();
        return !zzm("user property", 24, str) ? 6 : 0;
    }

    final int zzq(String str) {
        if (!zzj("event param", str)) {
            return 3;
        }
        if (!zzl("event param", null, null, str)) {
            return 14;
        }
        this.zzu.zzc();
        return !zzm("event param", 40, str) ? 3 : 0;
    }

    final int zzs(String str) {
        if (!zzk("event param", str)) {
            return 3;
        }
        if (!zzl("event param", null, null, str)) {
            return 14;
        }
        this.zzu.zzc();
        return !zzm("event param", 40, str) ? 3 : 0;
    }

    final boolean zzt(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    final boolean zzu(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String string = obj.toString();
            if (string.codePointCount(0, string.length()) > i) {
                this.zzu.zzaV().zzh().zzd("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(string.length()));
                return false;
            }
        }
        return true;
    }

    final void zzz(String str, String str2, String str3, Bundle bundle, List list, boolean z) {
        int iZzq;
        String str4;
        int iZzD;
        List list2 = list;
        if (bundle == null) {
            return;
        }
        zzic zzicVar = this.zzu;
        int i = true != zzicVar.zzc().zzu.zzk().zzag(231100000, true) ? 0 : 35;
        int i2 = 0;
        boolean z2 = false;
        for (String str5 : new TreeSet(bundle.keySet())) {
            if (list2 == null || !list2.contains(str5)) {
                iZzq = !z ? zzq(str5) : 0;
                if (iZzq == 0) {
                    iZzq = zzs(str5);
                }
            } else {
                iZzq = 0;
            }
            if (iZzq != 0) {
                zzJ(bundle, iZzq, str5, iZzq == 3 ? str5 : null);
                bundle.remove(str5);
            } else {
                if (zzt(bundle.get(str5))) {
                    zzicVar.zzaV().zzh().zzd("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str5);
                    iZzD = 22;
                    str4 = null;
                } else {
                    str4 = null;
                    iZzD = zzD(str, str2, str5, bundle.get(str5), bundle, list2, z, false);
                }
                if (iZzD != 0 && !"_ev".equals(str5)) {
                    zzJ(bundle, iZzD, str5, bundle.get(str5));
                    bundle.remove(str5);
                } else if (zzh(str5) && !zzaA(str5, zzjn.zzd)) {
                    i2++;
                    if (!zzag(231100000, true)) {
                        zzicVar.zzaV().zzd().zzc("Item array not supported on client's version of Google Play Services (Android Only)", zzicVar.zzl().zza(str2), zzicVar.zzl().zze(bundle));
                        zzax(bundle, 23);
                        bundle.remove(str5);
                    } else if (i2 > i) {
                        if (!zzicVar.zzc().zzp(str4, zzfy.zzbe) || !z2) {
                            zzgs zzgsVarZzd = zzicVar.zzaV().zzd();
                            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 55);
                            sb.append("Item can't contain more than ");
                            sb.append(i);
                            sb.append(" item-scoped custom params");
                            zzgsVarZzd.zzc(sb.toString(), zzicVar.zzl().zza(str2), zzicVar.zzl().zze(bundle));
                        }
                        zzax(bundle, 28);
                        bundle.remove(str5);
                        list2 = list;
                        z2 = true;
                    }
                }
            }
            list2 = list;
        }
    }
}
