.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
.super Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# instance fields
.field public final parts:Ljava/util/List;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 18

    const/16 v16, 0x0

    .line 127
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    const/4 v2, 0x0

    .line 114
    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V
    .locals 17

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move/from16 v15, p16

    .line 161
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist-IA;)V

    move-object/from16 v1, p3

    .line 173
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->title:Ljava/lang/String;

    .line 174
    invoke-static/range {p17 .. p17}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public copyWith(JI)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .locals 19

    move-object/from16 v0, p0

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-wide/from16 v3, p1

    .line 180
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 181
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move/from16 v7, p3

    .line 182
    invoke-virtual {v5, v3, v4, v7}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->copyWith(JI)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v7, p3

    move-object/from16 v18, v1

    .line 185
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->title:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->hasGapTag:Z

    move/from16 v17, v15

    move-wide v15, v8

    move-wide/from16 v8, p1

    invoke-direct/range {v1 .. v18}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    return-object v1
.end method
