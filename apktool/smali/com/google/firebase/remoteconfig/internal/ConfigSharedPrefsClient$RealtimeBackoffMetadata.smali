.class public Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealtimeBackoffMetadata"
.end annotation


# instance fields
.field private backoffEndTime:Ljava/util/Date;

.field private numFailedStreams:I


# direct methods
.method public constructor <init>(ILjava/util/Date;)V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;->numFailedStreams:I

    .line 423
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;->backoffEndTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method getBackoffEndTime()Ljava/util/Date;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;->backoffEndTime:Ljava/util/Date;

    return-object v0
.end method

.method getNumFailedStreams()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;->numFailedStreams:I

    return v0
.end method
