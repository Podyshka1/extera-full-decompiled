.class public final synthetic Lcom/google/android/exoplayer2/ext/flac/FlacDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    check-cast p1, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->$r8$lambda$JjJx5eXRkcD0pN1KFAcDuHhGRzs(Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    return-void
.end method
