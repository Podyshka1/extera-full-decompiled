.class Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackoffMetadata"
.end annotation


# instance fields
.field private backoffEndTime:Ljava/util/Date;

.field private numFailedFetches:I


# direct methods
.method constructor <init>(ILjava/util/Date;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;->numFailedFetches:I

    .line 360
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;->backoffEndTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method getBackoffEndTime()Ljava/util/Date;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;->backoffEndTime:Ljava/util/Date;

    return-object v0
.end method

.method getNumFailedFetches()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;->numFailedFetches:I

    return v0
.end method
