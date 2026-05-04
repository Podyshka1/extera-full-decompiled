.class public interface abstract Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->EMPTY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public abstract createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
.end method

.method public abstract createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
.end method
