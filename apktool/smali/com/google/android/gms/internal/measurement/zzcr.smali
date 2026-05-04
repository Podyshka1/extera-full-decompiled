.class public interface abstract Lcom/google/android/gms/internal/measurement/zzcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract beginAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract clearMeasurementEnabled(J)V
.end method

.method public abstract endAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract generateEventId(Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getGmpAppId(Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getSessionId(Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract getTestFlag(Lcom/google/android/gms/internal/measurement/zzcu;I)V
.end method

.method public abstract getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract initForTests(Ljava/util/Map;)V
.end method

.method public abstract initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdd;J)V
.end method

.method public abstract isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzcu;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
.end method

.method public abstract logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcu;J)V
.end method

.method public abstract logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method

.method public abstract onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V
.end method

.method public abstract onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;Landroid/os/Bundle;J)V
.end method

.method public abstract onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
.end method

.method public abstract onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V
.end method

.method public abstract onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
.end method

.method public abstract onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V
.end method

.method public abstract onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
.end method

.method public abstract onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V
.end method

.method public abstract onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcu;J)V
.end method

.method public abstract onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;Lcom/google/android/gms/internal/measurement/zzcu;J)V
.end method

.method public abstract onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
.end method

.method public abstract onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V
.end method

.method public abstract onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
.end method

.method public abstract onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V
.end method

.method public abstract performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcu;J)V
.end method

.method public abstract registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzda;)V
.end method

.method public abstract resetAnalyticsData(J)V
.end method

.method public abstract retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/zzcx;)V
.end method

.method public abstract setConditionalUserProperty(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsent(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsentThirdParty(Landroid/os/Bundle;J)V
.end method

.method public abstract setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setDataCollectionEnabled(Z)V
.end method

.method public abstract setDefaultEventParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzda;)V
.end method

.method public abstract setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzdc;)V
.end method

.method public abstract setMeasurementEnabled(ZJ)V
.end method

.method public abstract setMinimumSessionDuration(J)V
.end method

.method public abstract setSessionTimeoutDuration(J)V
.end method

.method public abstract setSgtmDebugInfo(Landroid/content/Intent;)V
.end method

.method public abstract setUserId(Ljava/lang/String;J)V
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V
.end method

.method public abstract unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzda;)V
.end method
