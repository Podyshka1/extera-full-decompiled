.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceHolderSnapshot"
.end annotation


# instance fields
.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final uid:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fputtimeline(Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 2778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2779
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    .line 2780
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method


# virtual methods
.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 2790
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    .line 2785
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object v0
.end method
