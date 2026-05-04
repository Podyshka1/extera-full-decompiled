.class public interface abstract Lcom/google/firebase/sessions/settings/SettingsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/SettingsProvider$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getSamplingRate()Ljava/lang/Double;
.end method

.method public abstract getSessionEnabled()Ljava/lang/Boolean;
.end method

.method public abstract getSessionRestartTimeout-FghU774()Lkotlin/time/Duration;
.end method

.method public abstract updateSettings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
