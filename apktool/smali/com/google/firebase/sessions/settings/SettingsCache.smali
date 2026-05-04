.class public interface abstract Lcom/google/firebase/sessions/settings/SettingsCache;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract hasCacheExpired()Z
.end method

.method public abstract sessionRestartTimeout()Ljava/lang/Integer;
.end method

.method public abstract sessionSamplingRate()Ljava/lang/Double;
.end method

.method public abstract sessionsEnabled()Ljava/lang/Boolean;
.end method

.method public abstract updateConfigs(Lcom/google/firebase/sessions/settings/SessionConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
