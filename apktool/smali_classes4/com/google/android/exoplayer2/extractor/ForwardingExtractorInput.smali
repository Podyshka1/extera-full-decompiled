.class public abstract Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# instance fields
.field private final input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public peek([BII)I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peek([BII)I

    move-result p1

    return p1
.end method

.method public peekFully([BII)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    return-void
.end method

.method public skip(I)I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p1

    return p1
.end method

.method public skipFully(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method
