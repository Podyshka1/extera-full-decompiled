.class final Lcom/google/android/play/core/integrity/f;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/google/android/play/core/integrity/f;->b:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/play/core/integrity/h;

    iget-wide v1, p0, Lcom/google/android/play/core/integrity/f;->a:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/core/integrity/h;-><init>(JLcom/google/android/play/core/integrity/g;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: cloudProjectNumber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/play/core/integrity/f;->a:J

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/play/core/integrity/f;->b:B

    return-object p0
.end method
