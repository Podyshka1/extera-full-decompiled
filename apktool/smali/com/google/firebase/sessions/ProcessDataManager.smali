.class public interface abstract Lcom/google/firebase/sessions/ProcessDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/ProcessDataManager$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract generateProcessDataMap()Ljava/util/Map;
.end method

.method public abstract getMyProcessName()Ljava/lang/String;
.end method

.method public abstract isColdStart(Ljava/util/Map;)Z
.end method

.method public abstract isMyProcessStale(Ljava/util/Map;)Z
.end method

.method public abstract onSessionGenerated()V
.end method

.method public abstract updateProcessDataMap(Ljava/util/Map;)Ljava/util/Map;
.end method
