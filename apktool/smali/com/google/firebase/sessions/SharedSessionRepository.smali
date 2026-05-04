.class public interface abstract Lcom/google/firebase/sessions/SharedSessionRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SharedSessionRepository$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/SharedSessionRepository$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/SharedSessionRepository$Companion;->$$INSTANCE:Lcom/google/firebase/sessions/SharedSessionRepository$Companion;

    sput-object v0, Lcom/google/firebase/sessions/SharedSessionRepository;->Companion:Lcom/google/firebase/sessions/SharedSessionRepository$Companion;

    return-void
.end method


# virtual methods
.method public abstract appBackground()V
.end method

.method public abstract appForeground()V
.end method

.method public abstract isInForeground()Z
.end method
