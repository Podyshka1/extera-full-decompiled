.class public interface abstract Lcom/google/firebase/sessions/api/SessionSubscriber;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/api/SessionSubscriber$Name;,
        Lcom/google/firebase/sessions/api/SessionSubscriber$SessionDetails;
    }
.end annotation


# virtual methods
.method public abstract getSessionSubscriberName()Lcom/google/firebase/sessions/api/SessionSubscriber$Name;
.end method

.method public abstract isDataCollectionEnabled()Z
.end method

.method public abstract onSessionChanged(Lcom/google/firebase/sessions/api/SessionSubscriber$SessionDetails;)V
.end method
