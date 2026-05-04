.class public abstract Lcom/google/firebase/heartbeatinfo/HeartBeatResult;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/heartbeatinfo/HeartBeatResult;
    .locals 1

    .line 31
    new-instance v0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract getUsedDates()Ljava/util/List;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method
