.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
.end method

.method public abstract getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
.end method

.method public abstract getPreferredQueueSize(JLjava/util/List;)I
.end method

.method public abstract maybeThrowError()V
.end method

.method public abstract onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Z
.end method

.method public abstract release()V
.end method

.method public abstract shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
.end method
