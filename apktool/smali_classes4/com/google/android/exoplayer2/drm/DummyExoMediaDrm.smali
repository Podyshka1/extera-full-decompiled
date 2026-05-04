.class public final Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSession([B)V
    .locals 0

    return-void
.end method

.method public createCryptoConfig([B)Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    .locals 0

    .line 148
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getCryptoType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .locals 0

    .line 69
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .locals 1

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public openSession()[B
    .locals 2

    .line 54
    new-instance v0, Landroid/media/MediaDrmException;

    const-string v1, "Attempting to open a session using a dummy ExoMediaDrm."

    invoke-direct {v0, v1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provideKeyResponse([B[B)[B
    .locals 0

    .line 76
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public provideProvisionResponse([B)V
    .locals 0

    .line 88
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .locals 0

    .line 94
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .locals 0

    .line 100
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public restoreKeys([B[B)V
    .locals 0

    .line 116
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0

    return-void
.end method

.method public synthetic setPlayerIdForSession([BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$-CC;->$default$setPlayerIdForSession(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BLcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-void
.end method
