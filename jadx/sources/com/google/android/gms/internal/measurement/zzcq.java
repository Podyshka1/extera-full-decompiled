package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzcq extends zzbm implements zzcr {
    public zzcq() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static zzcr asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return iInterfaceQueryLocalInterface instanceof zzcr ? (zzcr) iInterfaceQueryLocalInterface : new zzcp(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.zzbm
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzcu zzcsVar = null;
        zzcx zzcvVar = null;
        zzcu zzcsVar2 = null;
        zzcu zzcsVar3 = null;
        zzcu zzcsVar4 = null;
        zzcu zzcsVar5 = null;
        zzda zzcyVar = null;
        zzda zzcyVar2 = null;
        zzda zzcyVar3 = null;
        zzcu zzcsVar6 = null;
        zzcu zzcsVar7 = null;
        zzcu zzcsVar8 = null;
        zzcu zzcsVar9 = null;
        zzcu zzcsVar10 = null;
        zzcu zzcsVar11 = null;
        zzdc zzdbVar = null;
        zzcu zzcsVar12 = null;
        zzcu zzcsVar13 = null;
        zzcu zzcsVar14 = null;
        zzcu zzcsVar15 = null;
        zzcu zzcsVar16 = null;
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzdd zzddVar = (zzdd) zzbn.zzb(parcel, zzdd.CREATOR);
                long j = parcel.readLong();
                zzbn.zzf(parcel);
                initialize(iObjectWrapperAsInterface, zzddVar, j);
                break;
            case 2:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                boolean zZza = zzbn.zza(parcel);
                boolean zZza2 = zzbn.zza(parcel);
                long j2 = parcel.readLong();
                zzbn.zzf(parcel);
                logEvent(string, string2, bundle, zZza, zZza2, j2);
                break;
            case 3:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                Bundle bundle2 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar = iInterfaceQueryLocalInterface instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface : new zzcs(strongBinder);
                }
                long j3 = parcel.readLong();
                zzbn.zzf(parcel);
                logEventAndBundle(string3, string4, bundle2, zzcsVar, j3);
                break;
            case 4:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zZza3 = zzbn.zza(parcel);
                long j4 = parcel.readLong();
                zzbn.zzf(parcel);
                setUserProperty(string5, string6, iObjectWrapperAsInterface2, zZza3, j4);
                break;
            case 5:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                boolean zZza4 = zzbn.zza(parcel);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar16 = iInterfaceQueryLocalInterface2 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface2 : new zzcs(strongBinder2);
                }
                zzbn.zzf(parcel);
                getUserProperties(string7, string8, zZza4, zzcsVar16);
                break;
            case 6:
                String string9 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar15 = iInterfaceQueryLocalInterface3 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface3 : new zzcs(strongBinder3);
                }
                zzbn.zzf(parcel);
                getMaxUserProperties(string9, zzcsVar15);
                break;
            case 7:
                String string10 = parcel.readString();
                long j5 = parcel.readLong();
                zzbn.zzf(parcel);
                setUserId(string10, j5);
                break;
            case 8:
                Bundle bundle3 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                long j6 = parcel.readLong();
                zzbn.zzf(parcel);
                setConditionalUserProperty(bundle3, j6);
                break;
            case 9:
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                Bundle bundle4 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                zzbn.zzf(parcel);
                clearConditionalUserProperty(string11, string12, bundle4);
                break;
            case 10:
                String string13 = parcel.readString();
                String string14 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar14 = iInterfaceQueryLocalInterface4 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface4 : new zzcs(strongBinder4);
                }
                zzbn.zzf(parcel);
                getConditionalUserProperties(string13, string14, zzcsVar14);
                break;
            case 11:
                boolean zZza5 = zzbn.zza(parcel);
                long j7 = parcel.readLong();
                zzbn.zzf(parcel);
                setMeasurementEnabled(zZza5, j7);
                break;
            case 12:
                long j8 = parcel.readLong();
                zzbn.zzf(parcel);
                resetAnalyticsData(j8);
                break;
            case 13:
                long j9 = parcel.readLong();
                zzbn.zzf(parcel);
                setMinimumSessionDuration(j9);
                break;
            case 14:
                long j10 = parcel.readLong();
                zzbn.zzf(parcel);
                setSessionTimeoutDuration(j10);
                break;
            case 15:
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                long j11 = parcel.readLong();
                zzbn.zzf(parcel);
                setCurrentScreen(iObjectWrapperAsInterface3, string15, string16, j11);
                break;
            case 16:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar13 = iInterfaceQueryLocalInterface5 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface5 : new zzcs(strongBinder5);
                }
                zzbn.zzf(parcel);
                getCurrentScreenName(zzcsVar13);
                break;
            case 17:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar12 = iInterfaceQueryLocalInterface6 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface6 : new zzcs(strongBinder6);
                }
                zzbn.zzf(parcel);
                getCurrentScreenClass(zzcsVar12);
                break;
            case 18:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    zzdbVar = iInterfaceQueryLocalInterface7 instanceof zzdc ? (zzdc) iInterfaceQueryLocalInterface7 : new zzdb(strongBinder7);
                }
                zzbn.zzf(parcel);
                setInstanceIdProvider(zzdbVar);
                break;
            case 19:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar11 = iInterfaceQueryLocalInterface8 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface8 : new zzcs(strongBinder8);
                }
                zzbn.zzf(parcel);
                getCachedAppInstanceId(zzcsVar11);
                break;
            case 20:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar10 = iInterfaceQueryLocalInterface9 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface9 : new zzcs(strongBinder9);
                }
                zzbn.zzf(parcel);
                getAppInstanceId(zzcsVar10);
                break;
            case 21:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar9 = iInterfaceQueryLocalInterface10 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface10 : new zzcs(strongBinder10);
                }
                zzbn.zzf(parcel);
                getGmpAppId(zzcsVar9);
                break;
            case 22:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar8 = iInterfaceQueryLocalInterface11 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface11 : new zzcs(strongBinder11);
                }
                zzbn.zzf(parcel);
                generateEventId(zzcsVar8);
                break;
            case 23:
                String string17 = parcel.readString();
                long j12 = parcel.readLong();
                zzbn.zzf(parcel);
                beginAdUnitExposure(string17, j12);
                break;
            case 24:
                String string18 = parcel.readString();
                long j13 = parcel.readLong();
                zzbn.zzf(parcel);
                endAdUnitExposure(string18, j13);
                break;
            case 25:
                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j14 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityStarted(iObjectWrapperAsInterface4, j14);
                break;
            case 26:
                IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j15 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityStopped(iObjectWrapperAsInterface5, j15);
                break;
            case 27:
                IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                long j16 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityCreated(iObjectWrapperAsInterface6, bundle5, j16);
                break;
            case 28:
                IObjectWrapper iObjectWrapperAsInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j17 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityDestroyed(iObjectWrapperAsInterface7, j17);
                break;
            case 29:
                IObjectWrapper iObjectWrapperAsInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j18 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityPaused(iObjectWrapperAsInterface8, j18);
                break;
            case 30:
                IObjectWrapper iObjectWrapperAsInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j19 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityResumed(iObjectWrapperAsInterface9, j19);
                break;
            case 31:
                IObjectWrapper iObjectWrapperAsInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar7 = iInterfaceQueryLocalInterface12 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface12 : new zzcs(strongBinder12);
                }
                long j20 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivitySaveInstanceState(iObjectWrapperAsInterface10, zzcsVar7, j20);
                break;
            case 32:
                Bundle bundle6 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar6 = iInterfaceQueryLocalInterface13 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface13 : new zzcs(strongBinder13);
                }
                long j21 = parcel.readLong();
                zzbn.zzf(parcel);
                performAction(bundle6, zzcsVar6, j21);
                break;
            case 33:
                int i3 = parcel.readInt();
                String string19 = parcel.readString();
                IObjectWrapper iObjectWrapperAsInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperAsInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperAsInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbn.zzf(parcel);
                logHealthData(i3, string19, iObjectWrapperAsInterface11, iObjectWrapperAsInterface12, iObjectWrapperAsInterface13);
                break;
            case 34:
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzcyVar3 = iInterfaceQueryLocalInterface14 instanceof zzda ? (zzda) iInterfaceQueryLocalInterface14 : new zzcy(strongBinder14);
                }
                zzbn.zzf(parcel);
                setEventInterceptor(zzcyVar3);
                break;
            case 35:
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzcyVar2 = iInterfaceQueryLocalInterface15 instanceof zzda ? (zzda) iInterfaceQueryLocalInterface15 : new zzcy(strongBinder15);
                }
                zzbn.zzf(parcel);
                registerOnMeasurementEventListener(zzcyVar2);
                break;
            case 36:
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzcyVar = iInterfaceQueryLocalInterface16 instanceof zzda ? (zzda) iInterfaceQueryLocalInterface16 : new zzcy(strongBinder16);
                }
                zzbn.zzf(parcel);
                unregisterOnMeasurementEventListener(zzcyVar);
                break;
            case 37:
                HashMap mapZze = zzbn.zze(parcel);
                zzbn.zzf(parcel);
                initForTests(mapZze);
                break;
            case 38:
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 != null) {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar5 = iInterfaceQueryLocalInterface17 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface17 : new zzcs(strongBinder17);
                }
                int i4 = parcel.readInt();
                zzbn.zzf(parcel);
                getTestFlag(zzcsVar5, i4);
                break;
            case 39:
                boolean zZza6 = zzbn.zza(parcel);
                zzbn.zzf(parcel);
                setDataCollectionEnabled(zZza6);
                break;
            case 40:
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar4 = iInterfaceQueryLocalInterface18 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface18 : new zzcs(strongBinder18);
                }
                zzbn.zzf(parcel);
                isDataCollectionEnabled(zzcsVar4);
                break;
            case 41:
            case 47:
            case 49:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                zzbn.zzf(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long j22 = parcel.readLong();
                zzbn.zzf(parcel);
                clearMeasurementEnabled(j22);
                break;
            case 44:
                Bundle bundle8 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                long j23 = parcel.readLong();
                zzbn.zzf(parcel);
                setConsent(bundle8, j23);
                break;
            case 45:
                Bundle bundle9 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                long j24 = parcel.readLong();
                zzbn.zzf(parcel);
                setConsentThirdParty(bundle9, j24);
                break;
            case 46:
                IBinder strongBinder19 = parcel.readStrongBinder();
                if (strongBinder19 != null) {
                    IInterface iInterfaceQueryLocalInterface19 = strongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar3 = iInterfaceQueryLocalInterface19 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface19 : new zzcs(strongBinder19);
                }
                zzbn.zzf(parcel);
                getSessionId(zzcsVar3);
                break;
            case 48:
                Intent intent = (Intent) zzbn.zzb(parcel, Intent.CREATOR);
                zzbn.zzf(parcel);
                setSgtmDebugInfo(intent);
                break;
            case 50:
                zzdf zzdfVar = (zzdf) zzbn.zzb(parcel, zzdf.CREATOR);
                String string20 = parcel.readString();
                String string21 = parcel.readString();
                long j25 = parcel.readLong();
                zzbn.zzf(parcel);
                setCurrentScreenByScionActivityInfo(zzdfVar, string20, string21, j25);
                break;
            case 51:
                zzdf zzdfVar2 = (zzdf) zzbn.zzb(parcel, zzdf.CREATOR);
                long j26 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityStartedByScionActivityInfo(zzdfVar2, j26);
                break;
            case 52:
                zzdf zzdfVar3 = (zzdf) zzbn.zzb(parcel, zzdf.CREATOR);
                long j27 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityStoppedByScionActivityInfo(zzdfVar3, j27);
                break;
            case 53:
                zzdf zzdfVar4 = (zzdf) zzbn.zzb(parcel, zzdf.CREATOR);
                Bundle bundle10 = (Bundle) zzbn.zzb(parcel, Bundle.CREATOR);
                long j28 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityCreatedByScionActivityInfo(zzdfVar4, bundle10, j28);
                break;
            case 54:
                zzdf zzdfVar5 = (zzdf) zzbn.zzb(parcel, zzdf.CREATOR);
                long j29 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityDestroyedByScionActivityInfo(zzdfVar5, j29);
                break;
            case 55:
                zzdf zzdfVar6 = (zzdf) zzbn.zzb(parcel, zzdf.CREATOR);
                long j30 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityPausedByScionActivityInfo(zzdfVar6, j30);
                break;
            case 56:
                zzdf zzdfVar7 = (zzdf) zzbn.zzb(parcel, zzdf.CREATOR);
                long j31 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivityResumedByScionActivityInfo(zzdfVar7, j31);
                break;
            case 57:
                zzdf zzdfVar8 = (zzdf) zzbn.zzb(parcel, zzdf.CREATOR);
                IBinder strongBinder20 = parcel.readStrongBinder();
                if (strongBinder20 != null) {
                    IInterface iInterfaceQueryLocalInterface20 = strongBinder20.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcsVar2 = iInterfaceQueryLocalInterface20 instanceof zzcu ? (zzcu) iInterfaceQueryLocalInterface20 : new zzcs(strongBinder20);
                }
                long j32 = parcel.readLong();
                zzbn.zzf(parcel);
                onActivitySaveInstanceStateByScionActivityInfo(zzdfVar8, zzcsVar2, j32);
                break;
            case 58:
                IBinder strongBinder21 = parcel.readStrongBinder();
                if (strongBinder21 != null) {
                    IInterface iInterfaceQueryLocalInterface21 = strongBinder21.queryLocalInterface("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
                    zzcvVar = iInterfaceQueryLocalInterface21 instanceof zzcx ? (zzcx) iInterfaceQueryLocalInterface21 : new zzcv(strongBinder21);
                }
                zzbn.zzf(parcel);
                retrieveAndUploadBatches(zzcvVar);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
