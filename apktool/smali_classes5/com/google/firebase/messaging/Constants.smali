.class public abstract Lcom/google/firebase/messaging/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/Constants$MessagePayloadKeys;
    }
.end annotation


# static fields
.field public static final WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/Constants;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    return-void
.end method
