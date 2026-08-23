package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzcp extends zzbl implements zzcr {
    zzcp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void beginAdUnitExposure(String str, long j) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeLong(j);
        zzc(23, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzbn.zzc(parcelZza, bundle);
        zzc(9, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void endAdUnitExposure(String str, long j) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeLong(j);
        zzc(24, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void generateEventId(zzcu zzcuVar) {
        Parcel parcelZza = zza();
        zzbn.zzd(parcelZza, zzcuVar);
        zzc(22, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void getCachedAppInstanceId(zzcu zzcuVar) {
        Parcel parcelZza = zza();
        zzbn.zzd(parcelZza, zzcuVar);
        zzc(19, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void getConditionalUserProperties(String str, String str2, zzcu zzcuVar) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzbn.zzd(parcelZza, zzcuVar);
        zzc(10, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void getCurrentScreenClass(zzcu zzcuVar) {
        Parcel parcelZza = zza();
        zzbn.zzd(parcelZza, zzcuVar);
        zzc(17, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void getCurrentScreenName(zzcu zzcuVar) {
        Parcel parcelZza = zza();
        zzbn.zzd(parcelZza, zzcuVar);
        zzc(16, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void getGmpAppId(zzcu zzcuVar) {
        Parcel parcelZza = zza();
        zzbn.zzd(parcelZza, zzcuVar);
        zzc(21, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void getMaxUserProperties(String str, zzcu zzcuVar) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzbn.zzd(parcelZza, zzcuVar);
        zzc(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void getUserProperties(String str, String str2, boolean z, zzcu zzcuVar) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        int i = zzbn.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        zzbn.zzd(parcelZza, zzcuVar);
        zzc(5, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void initialize(IObjectWrapper iObjectWrapper, zzdd zzddVar, long j) {
        Parcel parcelZza = zza();
        zzbn.zzd(parcelZza, iObjectWrapper);
        zzbn.zzc(parcelZza, zzddVar);
        parcelZza.writeLong(j);
        zzc(1, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzbn.zzc(parcelZza, bundle);
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeInt(z2 ? 1 : 0);
        parcelZza.writeLong(j);
        zzc(2, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(5);
        parcelZza.writeString(str);
        zzbn.zzd(parcelZza, iObjectWrapper);
        zzbn.zzd(parcelZza, iObjectWrapper2);
        zzbn.zzd(parcelZza, iObjectWrapper3);
        zzc(33, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void onActivityCreatedByScionActivityInfo(zzdf zzdfVar, Bundle bundle, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, zzdfVar);
        zzbn.zzc(parcelZza, bundle);
        parcelZza.writeLong(j);
        zzc(53, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void onActivityDestroyedByScionActivityInfo(zzdf zzdfVar, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, zzdfVar);
        parcelZza.writeLong(j);
        zzc(54, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void onActivityPausedByScionActivityInfo(zzdf zzdfVar, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, zzdfVar);
        parcelZza.writeLong(j);
        zzc(55, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void onActivityResumedByScionActivityInfo(zzdf zzdfVar, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, zzdfVar);
        parcelZza.writeLong(j);
        zzc(56, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void onActivitySaveInstanceStateByScionActivityInfo(zzdf zzdfVar, zzcu zzcuVar, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, zzdfVar);
        zzbn.zzd(parcelZza, zzcuVar);
        parcelZza.writeLong(j);
        zzc(57, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void onActivityStartedByScionActivityInfo(zzdf zzdfVar, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, zzdfVar);
        parcelZza.writeLong(j);
        zzc(51, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void onActivityStoppedByScionActivityInfo(zzdf zzdfVar, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, zzdfVar);
        parcelZza.writeLong(j);
        zzc(52, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void registerOnMeasurementEventListener(zzda zzdaVar) {
        Parcel parcelZza = zza();
        zzbn.zzd(parcelZza, zzdaVar);
        zzc(35, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void resetAnalyticsData(long j) {
        Parcel parcelZza = zza();
        parcelZza.writeLong(j);
        zzc(12, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void retrieveAndUploadBatches(zzcx zzcxVar) {
        Parcel parcelZza = zza();
        zzbn.zzd(parcelZza, zzcxVar);
        zzc(58, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, bundle);
        parcelZza.writeLong(j);
        zzc(8, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void setCurrentScreenByScionActivityInfo(zzdf zzdfVar, String str, String str2, long j) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, zzdfVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        parcelZza.writeLong(j);
        zzc(50, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void setDataCollectionEnabled(boolean z) {
        Parcel parcelZza = zza();
        int i = zzbn.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        zzc(39, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel parcelZza = zza();
        int i = zzbn.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeLong(j);
        zzc(11, parcelZza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcr
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzbn.zzd(parcelZza, iObjectWrapper);
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeLong(j);
        zzc(4, parcelZza);
    }
}
