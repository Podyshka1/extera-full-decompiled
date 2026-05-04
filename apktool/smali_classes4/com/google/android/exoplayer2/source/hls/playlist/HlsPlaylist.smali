.class public abstract Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/FilterableManifest;


# instance fields
.field public final baseUri:Ljava/lang/String;

.field public final hasIndependentSegments:Z

.field public final tags:Ljava/util/List;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->tags:Ljava/util/List;

    .line 43
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    return-void
.end method
