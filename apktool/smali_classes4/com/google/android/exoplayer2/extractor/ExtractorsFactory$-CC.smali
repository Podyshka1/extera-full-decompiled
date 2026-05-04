.class public abstract synthetic Lcom/google/android/exoplayer2/extractor/ExtractorsFactory$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$createExtractors(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    .line 43
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->EMPTY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    return-object v0
.end method
