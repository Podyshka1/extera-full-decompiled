package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.zzy;
import com.google.android.gms.cast.internal.zzz;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class CastDevice extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CastDevice> CREATOR = new zzs();
    final String zza;
    private final String zzb;
    private InetAddress zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final int zzg;
    private final List zzh;
    private final int zzi;
    private final int zzj;
    private final String zzk;
    private final String zzl;
    private final int zzm;
    private final String zzn;
    private final byte[] zzo;
    private final String zzp;
    private final boolean zzq;
    private final zzz zzr;
    private final Integer zzs;

    CastDevice(String str, String str2, String str3, String str4, String str5, int i, List list, int i2, int i3, String str6, String str7, int i4, String str8, byte[] bArr, String str9, boolean z, zzz zzzVar, Integer num) {
        this.zzb = zzd(str);
        String strZzd = zzd(str2);
        this.zza = strZzd;
        if (!TextUtils.isEmpty(strZzd)) {
            try {
                this.zzc = InetAddress.getByName(strZzd);
            } catch (UnknownHostException e) {
                Log.i("CastDevice", "Unable to convert host address (" + this.zza + ") to ipaddress: " + e.getMessage());
            }
        }
        this.zzd = zzd(str3);
        this.zze = zzd(str4);
        this.zzf = zzd(str5);
        this.zzg = i;
        this.zzh = list == null ? new ArrayList() : list;
        this.zzi = i2;
        this.zzj = i3;
        this.zzk = zzd(str6);
        this.zzl = str7;
        this.zzm = i4;
        this.zzn = str8;
        this.zzo = bArr;
        this.zzp = str9;
        this.zzq = z;
        this.zzr = zzzVar;
        this.zzs = num;
    }

    public static CastDevice getFromBundle(Bundle bundle) {
        ClassLoader classLoader;
        if (bundle == null || (classLoader = CastDevice.class.getClassLoader()) == null) {
            return null;
        }
        bundle.setClassLoader(classLoader);
        return (CastDevice) bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
    }

    private static String zzd(String str) {
        return str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
    }

    public boolean equals(Object obj) {
        byte[] bArr;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CastDevice)) {
            return false;
        }
        CastDevice castDevice = (CastDevice) obj;
        String str = this.zzb;
        return str == null ? castDevice.zzb == null : CastUtils.zze(str, castDevice.zzb) && CastUtils.zze(this.zzc, castDevice.zzc) && CastUtils.zze(this.zze, castDevice.zze) && CastUtils.zze(this.zzd, castDevice.zzd) && CastUtils.zze(this.zzf, castDevice.zzf) && this.zzg == castDevice.zzg && CastUtils.zze(this.zzh, castDevice.zzh) && this.zzi == castDevice.zzi && this.zzj == castDevice.zzj && CastUtils.zze(this.zzk, castDevice.zzk) && CastUtils.zze(Integer.valueOf(this.zzm), Integer.valueOf(castDevice.zzm)) && CastUtils.zze(this.zzn, castDevice.zzn) && CastUtils.zze(this.zzl, castDevice.zzl) && CastUtils.zze(this.zzf, castDevice.getDeviceVersion()) && this.zzg == castDevice.getServicePort() && (((bArr = this.zzo) == null && castDevice.zzo == null) || Arrays.equals(bArr, castDevice.zzo)) && CastUtils.zze(this.zzp, castDevice.zzp) && this.zzq == castDevice.zzq && CastUtils.zze(zzb(), castDevice.zzb());
    }

    public String getDeviceId() {
        return this.zzb.startsWith("__cast_nearby__") ? this.zzb.substring(16) : this.zzb;
    }

    public String getDeviceVersion() {
        return this.zzf;
    }

    public String getFriendlyName() {
        return this.zzd;
    }

    public List getIcons() {
        return DesugarCollections.unmodifiableList(this.zzh);
    }

    public String getModelName() {
        return this.zze;
    }

    public int getServicePort() {
        return this.zzg;
    }

    public boolean hasCapability(int i) {
        return (this.zzi & i) == i;
    }

    public int hashCode() {
        String str = this.zzb;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public void putInBundle(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", this);
    }

    public String toString() {
        String str = this.zzd;
        Locale locale = Locale.ROOT;
        if (!TextUtils.isEmpty(str)) {
            int length = str.length();
            str = length <= 2 ? length == 2 ? "xx" : "x" : String.format(locale, "%c%d%c", Character.valueOf(str.charAt(0)), Integer.valueOf(length - 2), Character.valueOf(str.charAt(length - 1)));
        }
        return String.format(locale, "\"%s\" (%s)", str, this.zzb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        String str = this.zzb;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, str, false);
        SafeParcelWriter.writeString(parcel, 3, this.zza, false);
        SafeParcelWriter.writeString(parcel, 4, getFriendlyName(), false);
        SafeParcelWriter.writeString(parcel, 5, getModelName(), false);
        SafeParcelWriter.writeString(parcel, 6, getDeviceVersion(), false);
        SafeParcelWriter.writeInt(parcel, 7, getServicePort());
        SafeParcelWriter.writeTypedList(parcel, 8, getIcons(), false);
        SafeParcelWriter.writeInt(parcel, 9, this.zzi);
        SafeParcelWriter.writeInt(parcel, 10, this.zzj);
        SafeParcelWriter.writeString(parcel, 11, this.zzk, false);
        SafeParcelWriter.writeString(parcel, 12, this.zzl, false);
        SafeParcelWriter.writeInt(parcel, 13, this.zzm);
        SafeParcelWriter.writeString(parcel, 14, this.zzn, false);
        SafeParcelWriter.writeByteArray(parcel, 15, this.zzo, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzp, false);
        SafeParcelWriter.writeBoolean(parcel, 17, this.zzq);
        SafeParcelWriter.writeParcelable(parcel, 18, zzb(), i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 19, this.zzs, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final int zza() {
        return this.zzi;
    }

    public final zzz zzb() {
        if (this.zzr == null) {
            boolean zHasCapability = hasCapability(32);
            boolean zHasCapability2 = hasCapability(64);
            if (zHasCapability || zHasCapability2) {
                return zzy.zza(1);
            }
        }
        return this.zzr;
    }

    public final String zzc() {
        return this.zzl;
    }
}
