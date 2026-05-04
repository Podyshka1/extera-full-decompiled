.class public Lorg/telegram/messenger/video/MediaCodecVideoConvertor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;,
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;,
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;,
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;
    }
.end annotation


# static fields
.field private static final MEDIACODEC_TIMEOUT_DEFAULT:I = 0x9c4

.field private static final MEDIACODEC_TIMEOUT_INCREASED:I = 0x55f0

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5


# instance fields
.field private callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

.field private endPresentationTime:J

.field private extractor:Landroid/media/MediaExtractor;

.field private muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

.field private outputMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/audio_input/AudioInput;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 949
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 950
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    .line 953
    :try_start_0
    new-instance v2, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;

    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    iget v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/audio_input/AudioInput;->setVolume(F)V

    .line 960
    iget-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 961
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartOffsetUs(J)V

    .line 963
    :cond_1
    iget-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 964
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartTimeUs(J)V

    goto :goto_1

    :cond_2
    move-wide v3, v5

    .line 966
    :goto_1
    iget-wide v7, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_3

    add-long/2addr v3, v7

    .line 967
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setEndTimeUs(J)V

    .line 969
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v1

    .line 955
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private checkConversionCanceled()V
    .locals 1

    .line 1260
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->checkConversionCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;-><init>(Lorg/telegram/messenger/video/MediaCodecVideoConvertor;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z
    .locals 111

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 70
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->videoPath:Ljava/lang/String;

    .line 71
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cacheFile:Ljava/io/File;

    .line 72
    iget v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->rotationValue:I

    .line 73
    iget-boolean v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSecret:Z

    .line 74
    iget v5, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalWidth:I

    .line 75
    iget v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalHeight:I

    .line 76
    iget v13, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultWidth:I

    .line 77
    iget v14, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultHeight:I

    .line 78
    iget v7, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->framerate:I

    .line 79
    iget v15, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->bitrate:I

    .line 80
    iget v8, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalBitrate:I

    .line 81
    iget-wide v9, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->startTime:J

    move-object/from16 v16, v3

    move-object v11, v4

    .line 82
    iget-wide v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->endTime:J

    move-wide/from16 v17, v3

    .line 83
    iget-wide v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->avatarStartTime:J

    move/from16 v19, v15

    .line 84
    iget-boolean v15, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->needCompress:Z

    move-wide/from16 v20, v9

    .line 85
    iget-wide v9, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->duration:J

    move-object/from16 v22, v11

    .line 86
    iget-object v11, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    move-object/from16 v23, v11

    .line 87
    iget-object v11, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->paintPath:Ljava/lang/String;

    move-object/from16 v24, v11

    .line 88
    iget-object v11, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->blurPath:Ljava/lang/String;

    move-object/from16 v25, v11

    .line 89
    iget-object v11, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->mediaEntities:Ljava/util/ArrayList;

    move-object/from16 v26, v11

    .line 90
    iget-boolean v11, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isPhoto:Z

    move/from16 v27, v11

    .line 91
    iget-object v11, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    move/from16 v28, v12

    .line 92
    iget-boolean v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isRound:Z

    move/from16 v29, v12

    .line 93
    iget-object v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientTopColor:Ljava/lang/Integer;

    move-object/from16 v30, v12

    .line 94
    iget-object v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientBottomColor:Ljava/lang/Integer;

    move-object/from16 v31, v12

    .line 95
    iget-boolean v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->muted:Z

    move/from16 v32, v12

    .line 96
    iget v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->volume:F

    move/from16 v33, v12

    .line 97
    iget-boolean v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isStory:Z

    move/from16 v34, v12

    .line 98
    iget-object v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    move-object/from16 v35, v12

    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v15

    const-string v15, "convertVideoInternal original="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "x"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v37, v5

    const-string v5, "  result="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v40, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v40, v3

    move-object/from16 v42, v15

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 108
    :goto_0
    iget-boolean v15, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSticker:Z

    move/from16 v44, v15

    .line 110
    const-string v15, "video/hevc"

    if-eqz v44, :cond_1

    const-string v45, "video/x-vnd.on2.vp9"

    :goto_1
    move-object/from16 v3, v45

    goto :goto_2

    :cond_1
    if-eqz v34, :cond_2

    move-object v3, v15

    goto :goto_2

    :cond_2
    const-string v45, "video/avc"

    goto :goto_1

    :goto_2
    iput-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move-object/from16 v45, v15

    .line 119
    :try_start_0
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_73

    long-to-float v3, v9

    const/high16 v50, 0x447a0000    # 1000.0f

    div-float v51, v3, v50

    const-wide/16 v52, 0x3e8

    move/from16 v54, v13

    mul-long v12, v9, v52

    .line 124
    :try_start_1
    iput-wide v12, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    .line 125
    invoke-direct {v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_72

    move-object/from16 v55, v15

    .line 128
    const-string v15, "csd-1"

    move-object/from16 v56, v15

    const-string v15, "csd-0"

    move-object/from16 v57, v15

    const-string v15, "prepend-sps-pps-to-idr-frames"

    move-object/from16 v59, v15

    const/4 v15, -0x1

    if-eqz v27, :cond_36

    if-eqz v5, :cond_5

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpg-float v5, v51, v5

    if-gtz v5, :cond_3

    const v5, 0x27ac40

    goto :goto_3

    :cond_3
    const v5, 0x459c4000    # 5000.0f

    cmpg-float v5, v51, v5

    if-gtz v5, :cond_4

    const v5, 0x2191c0

    goto :goto_3

    :cond_4
    const v5, 0x17cdc0

    goto :goto_3

    :cond_5
    if-gtz v19, :cond_6

    const v5, 0xe1000

    goto :goto_3

    :cond_6
    move/from16 v5, v19

    :goto_3
    if-eqz v11, :cond_8

    .line 146
    :try_start_2
    iget-object v8, v11, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_7

    goto :goto_c

    :cond_7
    move/from16 v2, v54

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    move-object v2, v1

    move v15, v5

    move v4, v7

    move/from16 v83, v36

    move-object/from16 v7, v42

    move/from16 v13, v54

    move-object/from16 v1, v55

    :goto_4
    const/4 v3, -0x5

    :goto_5
    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    :goto_6
    const/16 v66, 0x0

    const/16 v100, 0x0

    :goto_7
    const/16 v102, 0x0

    goto/16 :goto_128

    :catch_0
    move-exception v0

    move-object v3, v1

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move/from16 v13, v54

    :goto_8
    const/4 v6, 0x0

    :goto_9
    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_a
    const/16 v20, 0x0

    :goto_b
    const/16 v26, 0x0

    const/16 v49, -0x5

    const/16 v75, 0x0

    goto/16 :goto_60

    .line 147
    :cond_8
    :goto_c
    :try_start_3
    rem-int/lit8 v8, v54, 0x10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_22
    .catchall {:try_start_3 .. :try_end_3} :catchall_1f

    const/high16 v17, 0x41800000    # 16.0f

    if-eqz v8, :cond_a

    .line 148
    :try_start_4
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v8, :cond_9

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changing width from "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v2, v54

    :try_start_5
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v2

    div-float v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_f

    :catchall_1
    move-exception v0

    :goto_d
    move v13, v2

    move v15, v5

    move v4, v7

    move/from16 v83, v36

    move-object/from16 v7, v42

    const/4 v3, -0x5

    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v66, 0x0

    const/16 v100, 0x0

    const/16 v102, 0x0

    move-object v2, v1

    move-object/from16 v1, v55

    goto/16 :goto_128

    :catch_1
    move-exception v0

    :goto_e
    move-object v3, v1

    move v13, v2

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    goto :goto_8

    :catchall_2
    move-exception v0

    move/from16 v2, v54

    goto :goto_d

    :catch_2
    move-exception v0

    move/from16 v2, v54

    goto :goto_e

    :cond_9
    move/from16 v2, v54

    :goto_f
    int-to-float v3, v2

    div-float v3, v3, v17

    .line 151
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    mul-int/lit8 v2, v2, 0x10

    goto :goto_10

    :cond_a
    move/from16 v2, v54

    .line 153
    :goto_10
    :try_start_6
    rem-int/lit8 v3, v14, 0x10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_21
    .catchall {:try_start_6 .. :try_end_6} :catchall_1e

    if-eqz v3, :cond_c

    .line 154
    :try_start_7
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_b

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changing height from "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v8, v14

    div-float v8, v8, v17

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_b
    int-to-float v3, v14

    div-float v3, v3, v17

    .line 157
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    mul-int/lit8 v14, v3, 0x10

    .line 161
    :cond_c
    :goto_11
    :try_start_8
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_20
    .catchall {:try_start_8 .. :try_end_8} :catchall_1d

    if-eqz v3, :cond_d

    .line 162
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create photo encoder "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " duration = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 166
    :cond_d
    :try_start_a
    invoke-direct {v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_20
    .catchall {:try_start_a .. :try_end_a} :catchall_1d

    .line 169
    :try_start_b
    iget-object v8, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v8, v2, v14}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    .line 170
    const-string v9, "color-format"

    const v10, 0x7f000789

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 171
    const-string v9, "bitrate"

    invoke-virtual {v8, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 172
    const-string v9, "frame-rate"

    const/16 v10, 0x1e

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 173
    const-string v9, "i-frame-interval"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1f
    .catchall {:try_start_b .. :try_end_b} :catchall_1c

    .line 176
    :try_start_c
    const-string v10, "c2.qti.avc.encoder"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1e
    .catchall {:try_start_c .. :try_end_c} :catchall_1b

    .line 177
    :try_start_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected encoder "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 179
    invoke-virtual {v3, v8, v4, v4, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 180
    new-instance v8, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1d
    .catchall {:try_start_d .. :try_end_d} :catchall_1a

    .line 181
    :try_start_e
    invoke-virtual {v8}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 182
    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1c
    .catchall {:try_start_e .. :try_end_e} :catchall_19

    move-object v4, v9

    move v9, v2

    .line 184
    :try_start_f
    new-instance v2, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1b
    .catchall {:try_start_f .. :try_end_f} :catchall_18

    if-eqz v11, :cond_e

    :try_start_10
    iget-object v10, v11, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v10, :cond_e

    :goto_12
    move v10, v14

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object/from16 v2, v42

    move-object/from16 v42, v4

    move v4, v7

    move-object v7, v2

    move-object v2, v1

    move-object/from16 v100, v3

    move v15, v5

    move-object/from16 v102, v8

    move v13, v9

    move/from16 v83, v36

    move-object/from16 v1, v55

    const/4 v3, -0x5

    const/16 v28, 0x0

    const/16 v43, 0x0

    const/16 v66, 0x0

    move/from16 v36, v20

    goto/16 :goto_128

    :catch_3
    move-exception v0

    move-object v6, v3

    move-object v15, v4

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v75, v8

    move v13, v9

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    const/4 v8, 0x0

    const/16 v26, 0x0

    const/16 v49, -0x5

    move-object v3, v1

    goto/16 :goto_60

    :cond_e
    const/4 v11, 0x0

    goto :goto_12

    :goto_13
    int-to-float v14, v7

    move/from16 v17, v15

    const/4 v15, 0x1

    const/16 v18, 0x0

    move-object/from16 v19, p1

    move-object/from16 v74, v3

    move-object/from16 v21, v4

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v75, v8

    move-object v8, v11

    move-wide/from16 v71, v12

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    move/from16 v13, v28

    move-object/from16 v17, v31

    move/from16 v69, v36

    move/from16 v11, v37

    move-object/from16 v81, v42

    move-object/from16 v79, v45

    move-object/from16 v70, v55

    move-object/from16 v76, v56

    move-object/from16 v77, v57

    move-object/from16 v78, v59

    const/4 v1, 0x1

    move v12, v6

    move-object/from16 v22, v16

    move-object/from16 v6, v25

    move-object/from16 v16, v30

    :try_start_11
    invoke-direct/range {v2 .. v19}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1a
    .catchall {:try_start_11 .. :try_end_11} :catchall_17

    move-object/from16 v13, v19

    .line 191
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_19
    .catchall {:try_start_12 .. :try_end_12} :catchall_16

    if-eqz v44, :cond_f

    .line 194
    :try_start_13
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v3, Landroid/media/MediaMuxer;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Landroid/media/MediaMuxer;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-object/from16 v3, p0

    :try_start_14
    iput-object v0, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object/from16 v6, v22

    move-object/from16 v12, v79

    const/4 v15, 0x0

    goto/16 :goto_1c

    :catchall_4
    move-exception v0

    :goto_14
    move-object/from16 v28, v2

    move-object v2, v3

    move v13, v9

    move v14, v10

    move/from16 v36, v20

    move-object/from16 v42, v21

    move-object/from16 v16, v22

    move/from16 v4, v68

    move/from16 v83, v69

    move-object/from16 v1, v70

    move/from16 v15, v73

    move-object/from16 v100, v74

    move-object/from16 v102, v75

    :goto_15
    move-object/from16 v7, v81

    const/4 v3, -0x5

    :goto_16
    const/16 v43, 0x0

    :goto_17
    const/16 v66, 0x0

    goto/16 :goto_128

    :catch_4
    move-exception v0

    :goto_18
    move-object v8, v2

    move v13, v9

    move v14, v10

    move-object/from16 v15, v21

    move-object/from16 v27, v22

    :goto_19
    move-object/from16 v55, v70

    move-object/from16 v6, v74

    :goto_1a
    const/16 v26, 0x0

    :goto_1b
    const/16 v49, -0x5

    goto/16 :goto_60

    :catchall_5
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_14

    :catch_5
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_18

    :cond_f
    move-object/from16 v3, p0

    .line 196
    :try_start_15
    new-instance v4, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v4}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_18
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    move-object/from16 v6, v22

    .line 197
    :try_start_16
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    const/4 v15, 0x0

    .line 198
    invoke-virtual {v4, v15}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 199
    invoke-virtual {v4, v9, v10}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 200
    new-instance v5, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v7, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v7}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v8, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move-object/from16 v12, v79

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v4, v0, v8}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Lorg/telegram/messenger/video/MP4Builder;)V

    iput-object v5, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    .line 205
    :goto_1c
    iget-object v0, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    if-nez v0, :cond_10

    .line 207
    :try_start_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v4, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;

    move-wide/from16 v7, v71

    invoke-direct {v4, v7, v8}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;-><init>(J)V

    .line 210
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v4, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 213
    new-instance v4, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v4, v0, v7, v8}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 214
    :try_start_18
    iget-object v0, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    iget-object v5, v4, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    invoke-virtual {v0, v5, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move v5, v1

    move-object v14, v4

    move v11, v15

    move/from16 v16, v11

    move/from16 v17, v16

    move/from16 v18, v17

    const/4 v4, -0x5

    const-wide/16 v7, 0x0

    move v1, v0

    move/from16 v0, v18

    goto :goto_1e

    :catchall_6
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v3

    move-object/from16 v16, v6

    move v13, v9

    move v14, v10

    move/from16 v43, v15

    move/from16 v36, v20

    move-object/from16 v42, v21

    move/from16 v4, v68

    move/from16 v83, v69

    move-object/from16 v1, v70

    move/from16 v15, v73

    move-object/from16 v100, v74

    move-object/from16 v102, v75

    move-object/from16 v7, v81

    :goto_1d
    const/4 v3, -0x5

    goto/16 :goto_17

    :catch_6
    move-exception v0

    move-object v8, v2

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    move v13, v9

    move v14, v10

    move-object/from16 v15, v21

    move-object/from16 v55, v70

    move-object/from16 v6, v74

    goto/16 :goto_1b

    :catch_7
    move-exception v0

    move-object v8, v2

    move-object/from16 v27, v6

    move v13, v9

    move v14, v10

    move-object/from16 v15, v21

    goto/16 :goto_19

    :cond_10
    move v0, v1

    move v5, v0

    move v11, v15

    move/from16 v16, v11

    move/from16 v17, v16

    move/from16 v18, v17

    const/4 v1, -0x1

    const/4 v4, -0x5

    const-wide/16 v7, 0x0

    const/4 v14, 0x0

    :goto_1e
    if-eqz v11, :cond_12

    if-nez v0, :cond_11

    goto :goto_1f

    :cond_11
    move/from16 v49, v4

    move-object/from16 v27, v6

    move v13, v9

    move-object/from16 v26, v14

    move v1, v15

    move v12, v1

    move/from16 v4, v68

    move-object/from16 v55, v70

    move/from16 v5, v73

    move-object/from16 v7, v81

    move-object v15, v2

    move v14, v10

    goto/16 :goto_62

    .line 217
    :cond_12
    :goto_1f
    :try_start_19
    invoke-direct {v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_16
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    if-eqz v14, :cond_13

    .line 220
    :try_start_1a
    iget-object v0, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;I)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_21

    :catchall_7
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v3

    move v3, v4

    move-object/from16 v16, v6

    move v13, v9

    move v14, v10

    move/from16 v43, v15

    move/from16 v36, v20

    move-object/from16 v42, v21

    move/from16 v4, v68

    move/from16 v83, v69

    move-object/from16 v1, v70

    move/from16 v15, v73

    move-object/from16 v100, v74

    move-object/from16 v102, v75

    move-object/from16 v7, v81

    goto/16 :goto_17

    :catch_8
    move-exception v0

    move-object v8, v2

    move/from16 v49, v4

    move-object/from16 v27, v6

    move v13, v9

    move-object/from16 v26, v14

    move-object/from16 v15, v21

    move-object/from16 v55, v70

    move-object/from16 v6, v74

    :goto_20
    move v14, v10

    goto/16 :goto_60

    :cond_13
    :goto_21
    xor-int/lit8 v19, v16, 0x1

    move/from16 v82, v18

    move/from16 v18, v17

    move/from16 v17, v16

    const/16 v16, 0x1

    :goto_22
    if-nez v19, :cond_15

    if-eqz v16, :cond_14

    goto :goto_23

    :cond_14
    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v82

    goto :goto_1e

    .line 226
    :cond_15
    :goto_23
    :try_start_1b
    invoke-direct {v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_16
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    if-eqz p2, :cond_16

    const-wide/16 v22, 0x55f0

    move-wide/from16 v24, v22

    move-wide/from16 v22, v7

    move-wide/from16 v7, v24

    :goto_24
    move/from16 v24, v1

    move/from16 v25, v5

    move-object/from16 v1, v70

    move-object/from16 v5, v74

    goto :goto_25

    :cond_16
    move-wide/from16 v22, v7

    const-wide/16 v7, 0x9c4

    goto :goto_24

    .line 227
    :goto_25
    :try_start_1c
    invoke-virtual {v5, v1, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_15
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    const/4 v8, -0x1

    if-ne v7, v8, :cond_17

    move-object/from16 v28, v2

    move-object/from16 v27, v6

    move v2, v11

    move-object/from16 v26, v14

    move-object/from16 v13, v76

    move-object/from16 v11, v77

    move-object/from16 v59, v78

    const/16 v16, 0x0

    :goto_26
    const-wide/16 v46, 0x0

    move-object v6, v5

    :goto_27
    move/from16 v5, v25

    goto/16 :goto_42

    :cond_17
    const/4 v8, -0x3

    if-ne v7, v8, :cond_18

    move-object/from16 v28, v2

    move-object/from16 v27, v6

    move v2, v11

    move-object/from16 v26, v14

    move-object/from16 v13, v76

    move-object/from16 v11, v77

    move-object/from16 v59, v78

    const/4 v8, -0x1

    goto :goto_26

    :cond_18
    const/4 v8, -0x2

    if-ne v7, v8, :cond_1f

    .line 232
    :try_start_1d
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    .line 233
    sget-boolean v26, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v26, :cond_19

    move/from16 v26, v11

    .line 234
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "photo encoder new format "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_28
    const/4 v13, -0x5

    goto :goto_2c

    :catchall_8
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v3

    move v3, v4

    move-object/from16 v100, v5

    move-object/from16 v16, v6

    move v13, v9

    move v14, v10

    move/from16 v36, v20

    move-object/from16 v42, v21

    :goto_29
    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    :goto_2a
    move-object/from16 v102, v75

    :goto_2b
    move-object/from16 v7, v81

    goto/16 :goto_16

    :catch_9
    move-exception v0

    move-object/from16 v55, v1

    move-object v8, v2

    move/from16 v49, v4

    move-object/from16 v27, v6

    move v13, v9

    move-object/from16 v26, v14

    move-object/from16 v15, v21

    move-object v6, v5

    goto/16 :goto_20

    :cond_19
    move/from16 v26, v11

    goto :goto_28

    :goto_2c
    if-ne v4, v13, :cond_1e

    if-eqz v8, :cond_1e

    .line 237
    iget-object v11, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    const/4 v13, 0x0

    invoke-virtual {v11, v8, v13}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    move-object/from16 v13, v78

    .line 238
    :try_start_1e
    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    move/from16 v27, v4

    const/4 v4, 0x1

    if-ne v11, v4, :cond_1c

    move-object/from16 v11, v77

    .line 239
    :try_start_1f
    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v59, v13

    move-object/from16 v13, v76

    .line 240
    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v8

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    goto :goto_2d

    .line 241
    :cond_1a
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    :goto_2d
    if-nez v8, :cond_1b

    const/4 v8, 0x0

    goto :goto_2e

    :cond_1b
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v8
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :goto_2e
    add-int v18, v4, v8

    :goto_2f
    move/from16 v4, v27

    goto :goto_34

    :catchall_9
    move-exception v0

    :goto_30
    move-object/from16 v28, v2

    move-object v2, v3

    move-object/from16 v100, v5

    move-object/from16 v16, v6

    move v13, v9

    move v14, v10

    move/from16 v36, v20

    move-object/from16 v42, v21

    move/from16 v3, v27

    goto :goto_29

    :catch_a
    move-exception v0

    :goto_31
    move-object/from16 v55, v1

    move-object v8, v2

    move v13, v9

    move-object/from16 v26, v14

    move-object/from16 v15, v21

    move/from16 v49, v27

    move-object/from16 v27, v6

    move v14, v10

    :goto_32
    move-object v6, v5

    goto/16 :goto_60

    :cond_1c
    :goto_33
    move-object/from16 v59, v13

    move-object/from16 v13, v76

    move-object/from16 v11, v77

    goto :goto_2f

    :catchall_a
    move-exception v0

    move/from16 v27, v4

    goto :goto_30

    :catch_b
    move-exception v0

    move/from16 v27, v4

    goto :goto_31

    :cond_1d
    move/from16 v27, v4

    goto :goto_33

    :cond_1e
    move-object/from16 v13, v76

    move-object/from16 v11, v77

    move-object/from16 v59, v78

    :goto_34
    move-object/from16 v28, v2

    move-object/from16 v27, v6

    move/from16 v2, v26

    const/4 v8, -0x1

    const-wide/16 v46, 0x0

    move-object v6, v5

    move-object/from16 v26, v14

    goto/16 :goto_27

    :cond_1f
    move-object/from16 v13, v76

    move-object/from16 v11, v77

    move-object/from16 v59, v78

    if-ltz v7, :cond_30

    .line 248
    :try_start_20
    invoke-virtual {v5, v7}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_15
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    if-eqz v8, :cond_2f

    move-object/from16 v26, v14

    .line 252
    :try_start_21
    iget v14, v1, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_14
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    const/4 v15, 0x1

    if-le v14, v15, :cond_2a

    .line 253
    :try_start_22
    iget v15, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    and-int/lit8 v27, v15, 0x2

    if-nez v27, :cond_25

    if-eqz v18, :cond_20

    and-int/lit8 v27, v15, 0x1

    if-eqz v27, :cond_20

    move/from16 v27, v14

    .line 255
    :try_start_23
    iget v14, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v14, v14, v18

    iput v14, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v14, v27, v18

    .line 256
    iput v14, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_35

    :catch_c
    move-exception v0

    move-object/from16 v55, v1

    move-object v8, v2

    move/from16 v49, v4

    move-object/from16 v27, v6

    move v13, v9

    move v14, v10

    move-object/from16 v15, v21

    goto :goto_32

    :cond_20
    :goto_35
    if-eqz v25, :cond_21

    and-int/lit8 v14, v15, 0x1

    if-eqz v14, :cond_21

    .line 259
    iget-object v14, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v14, v8, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    const/4 v15, 0x0

    goto :goto_36

    :cond_21
    move/from16 v15, v25

    .line 262
    :goto_36
    :try_start_24
    iget-object v14, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    move-object/from16 v74, v5

    move-object/from16 v27, v6

    move/from16 v25, v15

    const/4 v15, 0x1

    :try_start_25
    invoke-virtual {v14, v4, v8, v1, v15}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v5

    const-wide/16 v46, 0x0

    cmp-long v8, v5, v46

    if-eqz v8, :cond_23

    .line 264
    iget-object v8, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v8, :cond_23

    .line 265
    iget-wide v14, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    cmp-long v28, v14, v22

    if-lez v28, :cond_22

    :goto_37
    move-object/from16 v28, v2

    goto :goto_38

    :cond_22
    move-wide/from16 v14, v22

    goto :goto_37

    :goto_38
    long-to-float v2, v14

    div-float v2, v2, v50

    div-float v2, v2, v50

    div-float v2, v2, v51

    .line 268
    :try_start_26
    invoke-interface {v8, v5, v6, v2}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    goto :goto_3b

    :catchall_b
    move-exception v0

    :goto_39
    move-object v2, v3

    move v3, v4

    move v13, v9

    move v14, v10

    move/from16 v36, v20

    move-object/from16 v42, v21

    move-object/from16 v16, v27

    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    move-object/from16 v100, v74

    goto/16 :goto_2a

    :catch_d
    move-exception v0

    :goto_3a
    move-object/from16 v55, v1

    move/from16 v49, v4

    move v13, v9

    move v14, v10

    move-object/from16 v15, v21

    move-object/from16 v8, v28

    move-object/from16 v6, v74

    goto/16 :goto_60

    :catchall_c
    move-exception v0

    move-object/from16 v28, v2

    goto :goto_39

    :catch_e
    move-exception v0

    move-object/from16 v28, v2

    goto :goto_3a

    :cond_23
    move-object/from16 v28, v2

    move-wide/from16 v14, v22

    :goto_3b
    move-wide/from16 v22, v14

    :cond_24
    :goto_3c
    move/from16 v5, v25

    goto/16 :goto_3f

    :catchall_d
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v74, v5

    move-object/from16 v27, v6

    goto :goto_39

    :catch_f
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v74, v5

    move-object/from16 v27, v6

    goto :goto_3a

    :cond_25
    move-object/from16 v28, v2

    move-object/from16 v74, v5

    move-object/from16 v27, v6

    const/4 v15, -0x5

    const-wide/16 v46, 0x0

    if-ne v4, v15, :cond_24

    .line 272
    iget-object v2, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 275
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v5, v2, [B

    .line 276
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v6, v2

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 277
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 278
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 281
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    :goto_3d
    if-ltz v2, :cond_27

    const/4 v8, 0x3

    if-le v2, v8, :cond_27

    .line 283
    aget-byte v14, v5, v2

    if-ne v14, v6, :cond_26

    add-int/lit8 v6, v2, -0x1

    aget-byte v6, v5, v6

    if-nez v6, :cond_26

    add-int/lit8 v6, v2, -0x2

    aget-byte v6, v5, v6

    if-nez v6, :cond_26

    add-int/lit8 v6, v2, -0x3

    aget-byte v14, v5, v6

    if-nez v14, :cond_26

    .line 284
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 285
    iget v14, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v14, v6

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    const/4 v8, 0x0

    .line 286
    invoke-virtual {v2, v5, v8, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 287
    iget v15, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v15, v6

    invoke-virtual {v14, v5, v6, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v15, v2

    goto :goto_3e

    :cond_26
    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x1

    const/4 v15, -0x5

    goto :goto_3d

    :cond_27
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 295
    :goto_3e
    iget-object v2, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v2, v9, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v15, :cond_28

    if-eqz v14, :cond_28

    .line 297
    invoke-virtual {v2, v11, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 298
    invoke-virtual {v2, v13, v14}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 300
    :cond_28
    iget-object v5, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    const/4 v15, 0x0

    invoke-virtual {v5, v2, v15}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    move v4, v2

    goto/16 :goto_3c

    .line 273
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unsupported!!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    :cond_2a
    move-object/from16 v28, v2

    move-object/from16 v74, v5

    move-object/from16 v27, v6

    const-wide/16 v46, 0x0

    goto/16 :goto_3c

    .line 303
    :goto_3f
    :try_start_27
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_13
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    :goto_40
    move-object/from16 v6, v74

    const/4 v15, 0x0

    goto :goto_41

    :cond_2b
    const/4 v2, 0x0

    goto :goto_40

    .line 304
    :goto_41
    :try_start_28
    invoke-virtual {v6, v7, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_12
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    const/4 v8, -0x1

    :goto_42
    if-eq v7, v8, :cond_2c

    move-object/from16 v70, v1

    move-object/from16 v74, v6

    move-object/from16 v77, v11

    move-object/from16 v76, v13

    move-wide/from16 v7, v22

    move/from16 v1, v24

    move-object/from16 v14, v26

    move-object/from16 v6, v27

    move-object/from16 v78, v59

    const/4 v15, 0x0

    move-object/from16 v13, p1

    move v11, v2

    move-object/from16 v2, v28

    goto/16 :goto_22

    :cond_2c
    if-nez v17, :cond_2e

    move/from16 v7, v82

    int-to-float v14, v7

    const/high16 v15, 0x41f00000    # 30.0f

    div-float/2addr v14, v15

    mul-float v14, v14, v50

    mul-float v14, v14, v50

    mul-float v14, v14, v50

    float-to-long v14, v14

    move-object/from16 v8, v28

    .line 312
    :try_start_29
    invoke-virtual {v8, v14, v15}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(J)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_11
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    move-object/from16 v55, v1

    move-object/from16 v1, v75

    .line 313
    :try_start_2a
    invoke-virtual {v1, v14, v15}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 314
    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    add-int/lit8 v7, v7, 0x1

    int-to-float v14, v7

    const/high16 v15, 0x41f00000    # 30.0f

    mul-float v15, v15, v51

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_2d

    .line 320
    invoke-virtual {v6}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move/from16 v82, v7

    const/16 v17, 0x1

    const/16 v19, 0x0

    goto :goto_48

    :catchall_e
    move-exception v0

    :goto_43
    move-object/from16 v102, v1

    move-object v2, v3

    move v3, v4

    move-object/from16 v100, v6

    move-object/from16 v28, v8

    :goto_44
    move v13, v9

    move v14, v10

    move/from16 v36, v20

    move-object/from16 v42, v21

    move-object/from16 v16, v27

    move-object/from16 v1, v55

    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    goto/16 :goto_2b

    :catch_10
    move-exception v0

    move-object/from16 v75, v1

    :goto_45
    move/from16 v49, v4

    move v13, v9

    move v14, v10

    move-object/from16 v15, v21

    goto/16 :goto_60

    :cond_2d
    move/from16 v82, v7

    goto :goto_48

    :catchall_f
    move-exception v0

    move-object/from16 v55, v1

    :goto_46
    move-object/from16 v1, v75

    goto :goto_43

    :catch_11
    move-exception v0

    move-object/from16 v55, v1

    :goto_47
    move-object/from16 v1, v75

    goto :goto_45

    :cond_2e
    move-object/from16 v55, v1

    move-object/from16 v8, v28

    move-object/from16 v1, v75

    move/from16 v7, v82

    :goto_48
    move-object/from16 v75, v1

    move-object/from16 v74, v6

    move-object/from16 v77, v11

    move-object/from16 v76, v13

    move/from16 v1, v24

    move-object/from16 v14, v26

    move-object/from16 v6, v27

    move-object/from16 v70, v55

    move-object/from16 v78, v59

    const/4 v15, 0x0

    move-object/from16 v13, p1

    move v11, v2

    move-object v2, v8

    move-wide/from16 v7, v22

    goto/16 :goto_22

    :catchall_10
    move-exception v0

    move-object/from16 v55, v1

    move-object/from16 v8, v28

    :goto_49
    move-object/from16 v1, v75

    move-object/from16 v102, v1

    move-object v2, v3

    move v3, v4

    move-object/from16 v100, v6

    goto :goto_44

    :catch_12
    move-exception v0

    move-object/from16 v55, v1

    move-object/from16 v8, v28

    goto :goto_47

    :catchall_11
    move-exception v0

    move-object/from16 v55, v1

    move-object/from16 v8, v28

    move-object/from16 v6, v74

    goto :goto_49

    :catch_13
    move-exception v0

    move-object/from16 v55, v1

    move-object/from16 v8, v28

    :goto_4a
    move-object/from16 v6, v74

    goto :goto_47

    :catchall_12
    move-exception v0

    move-object/from16 v55, v1

    move-object v8, v2

    move-object/from16 v27, v6

    move-object/from16 v1, v75

    move-object v6, v5

    goto/16 :goto_43

    :catch_14
    move-exception v0

    move-object/from16 v55, v1

    move-object v8, v2

    move-object/from16 v27, v6

    :goto_4b
    move-object/from16 v1, v75

    move-object v6, v5

    goto :goto_45

    :cond_2f
    move-object/from16 v55, v1

    move-object v8, v2

    move-object/from16 v27, v6

    move-object/from16 v26, v14

    move-object/from16 v1, v75

    move-object v6, v5

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoderOutputBuffer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " was null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_15
    move-exception v0

    move-object/from16 v55, v1

    move-object v8, v2

    move-object/from16 v27, v6

    move-object/from16 v26, v14

    goto :goto_4b

    :cond_30
    move-object/from16 v55, v1

    move-object v8, v2

    move-object/from16 v27, v6

    move-object/from16 v26, v14

    move-object/from16 v1, v75

    move-object v6, v5

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_10
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    :catchall_13
    move-exception v0

    move-object v8, v2

    move-object/from16 v27, v6

    move-object/from16 v55, v70

    move-object/from16 v6, v74

    goto/16 :goto_46

    :catch_16
    move-exception v0

    move-object v8, v2

    move-object/from16 v27, v6

    move-object/from16 v26, v14

    move-object/from16 v55, v70

    goto :goto_4a

    :catchall_14
    move-exception v0

    move-object v8, v2

    move-object/from16 v27, v6

    :goto_4c
    move-object/from16 v55, v70

    move-object/from16 v6, v74

    move-object/from16 v1, v75

    move-object/from16 v102, v1

    move-object v2, v3

    move-object/from16 v100, v6

    move-object/from16 v28, v8

    move v13, v9

    move v14, v10

    move/from16 v36, v20

    move-object/from16 v42, v21

    move-object/from16 v16, v27

    move-object/from16 v1, v55

    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    goto/16 :goto_15

    :catch_17
    move-exception v0

    move-object v8, v2

    move-object/from16 v27, v6

    :goto_4d
    move-object/from16 v55, v70

    move-object/from16 v6, v74

    move-object/from16 v1, v75

    move v13, v9

    move v14, v10

    move-object/from16 v15, v21

    goto/16 :goto_1a

    :catchall_15
    move-exception v0

    :goto_4e
    move-object v8, v2

    move-object/from16 v27, v22

    goto :goto_4c

    :catch_18
    move-exception v0

    :goto_4f
    move-object v8, v2

    move-object/from16 v27, v22

    goto :goto_4d

    :catchall_16
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_4e

    :catch_19
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_4f

    :catchall_17
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v27, v22

    move-object/from16 v55, v70

    move-object/from16 v6, v74

    move-object/from16 v1, v75

    move-object/from16 v102, v1

    move-object v2, v3

    move-object/from16 v100, v6

    move v13, v9

    move v14, v10

    move/from16 v36, v20

    move-object/from16 v42, v21

    move-object/from16 v16, v27

    :goto_50
    move-object/from16 v1, v55

    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    move-object/from16 v7, v81

    :goto_51
    const/4 v3, -0x5

    :goto_52
    const/16 v28, 0x0

    goto/16 :goto_16

    :catch_1a
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v27, v22

    move-object/from16 v55, v70

    move-object/from16 v6, v74

    move-object/from16 v1, v75

    move v13, v9

    move v14, v10

    :goto_53
    move-object/from16 v15, v21

    const/4 v8, 0x0

    goto/16 :goto_1a

    :catchall_18
    move-exception v0

    move-object v6, v3

    move-object/from16 v21, v4

    move/from16 v73, v5

    move/from16 v68, v7

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    :goto_54
    move-object v1, v8

    move-object/from16 v102, v1

    move-object v2, v3

    move-object/from16 v100, v6

    move v13, v9

    move/from16 v36, v20

    move-object/from16 v42, v21

    goto :goto_50

    :catch_1b
    move-exception v0

    move-object v6, v3

    move-object/from16 v21, v4

    move/from16 v73, v5

    move/from16 v68, v7

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    :goto_55
    move-object v1, v8

    move-object/from16 v75, v1

    move v13, v9

    goto :goto_53

    :catchall_19
    move-exception v0

    move-object v6, v3

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v21, v9

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    move v9, v2

    goto :goto_54

    :catch_1c
    move-exception v0

    move-object v6, v3

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v21, v9

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    move v9, v2

    goto :goto_55

    :catchall_1a
    move-exception v0

    move-object v6, v3

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v21, v9

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    move v9, v2

    move-object v2, v3

    move-object/from16 v100, v6

    move v13, v9

    move/from16 v36, v20

    move-object/from16 v42, v21

    move-object/from16 v1, v55

    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    move-object/from16 v7, v81

    const/4 v3, -0x5

    :goto_56
    const/16 v28, 0x0

    :goto_57
    const/16 v43, 0x0

    :goto_58
    const/16 v66, 0x0

    goto/16 :goto_7

    :catch_1d
    move-exception v0

    move-object v6, v3

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v21, v9

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    move v9, v2

    move v13, v9

    move-object/from16 v15, v21

    const/4 v8, 0x0

    goto/16 :goto_b

    :catchall_1b
    move-exception v0

    move-object v6, v3

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v21, v9

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    move v9, v2

    move-object v2, v3

    move-object/from16 v100, v6

    move v13, v9

    move-object/from16 v42, v21

    move-object/from16 v1, v55

    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    move-object/from16 v7, v81

    const/4 v3, -0x5

    :goto_59
    const/16 v28, 0x0

    const/16 v36, 0x0

    goto :goto_57

    :catch_1e
    move-exception v0

    move-object v6, v3

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v21, v9

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    move v9, v2

    move v13, v9

    move-object/from16 v15, v21

    const/4 v8, 0x0

    goto/16 :goto_a

    :catchall_1c
    move-exception v0

    move v9, v2

    move-object v6, v3

    move/from16 v73, v5

    move/from16 v68, v7

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    move-object v2, v3

    move-object/from16 v100, v6

    move v13, v9

    move-object/from16 v1, v55

    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    move-object/from16 v7, v81

    :goto_5a
    const/4 v3, -0x5

    :goto_5b
    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v42, 0x0

    goto :goto_57

    :catch_1f
    move-exception v0

    move v9, v2

    move-object v6, v3

    move/from16 v73, v5

    move/from16 v68, v7

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v3, v1

    move v13, v9

    goto/16 :goto_9

    :catchall_1d
    move-exception v0

    move-object v3, v1

    move v9, v2

    move/from16 v73, v5

    move/from16 v68, v7

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move-object v2, v3

    move v13, v9

    :goto_5c
    move-object/from16 v1, v55

    move/from16 v4, v68

    move/from16 v83, v69

    move/from16 v15, v73

    :goto_5d
    move-object/from16 v7, v81

    goto/16 :goto_4

    :catch_20
    move-exception v0

    move-object v3, v1

    move v9, v2

    move/from16 v73, v5

    move/from16 v68, v7

    move v10, v14

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move v13, v9

    goto/16 :goto_8

    :catchall_1e
    move-exception v0

    move-object v3, v1

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    :goto_5e
    move v13, v2

    move-object v2, v3

    goto :goto_5c

    :catch_21
    move-exception v0

    move-object v3, v1

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    :goto_5f
    move v13, v2

    goto/16 :goto_8

    :catchall_1f
    move-exception v0

    move-object v3, v1

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move/from16 v2, v54

    goto :goto_5e

    :catch_22
    move-exception v0

    move-object v3, v1

    move/from16 v73, v5

    move/from16 v68, v7

    move-object/from16 v27, v16

    move/from16 v69, v36

    move-object/from16 v81, v42

    move/from16 v2, v54

    goto :goto_5f

    .line 329
    :goto_60
    :try_start_2b
    instance-of v1, v0, Ljava/lang/IllegalStateException;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_25

    if-eqz v1, :cond_31

    if-nez p2, :cond_31

    const/4 v12, 0x1

    goto :goto_61

    :cond_31
    const/4 v12, 0x0

    .line 332
    :goto_61
    :try_start_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_24

    move/from16 v5, v73

    :try_start_2d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " framerate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_23

    move/from16 v4, v68

    :try_start_2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_22

    move-object/from16 v7, v81

    :try_start_2f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 333
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_21

    move-object/from16 v74, v6

    move v1, v12

    move-object/from16 v21, v15

    const/4 v12, 0x1

    move-object v15, v8

    :goto_62
    if-eqz v15, :cond_32

    .line 338
    :try_start_30
    invoke-virtual {v15}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/4 v15, 0x0

    goto :goto_65

    :catchall_20
    move-exception v0

    move/from16 v43, v1

    move-object v2, v3

    move-object/from16 v28, v15

    move/from16 v36, v20

    move-object/from16 v42, v21

    move-object/from16 v16, v27

    move/from16 v3, v49

    move-object/from16 v1, v55

    move/from16 v83, v69

    move-object/from16 v100, v74

    :goto_63
    move-object/from16 v102, v75

    :goto_64
    const/16 v66, 0x0

    move v15, v5

    goto/16 :goto_128

    :cond_32
    :goto_65
    if-eqz v75, :cond_33

    .line 342
    invoke-virtual/range {v75 .. v75}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/16 v75, 0x0

    :cond_33
    if-eqz v74, :cond_34

    .line 346
    invoke-virtual/range {v74 .. v74}, Landroid/media/MediaCodec;->stop()V

    .line 347
    invoke-virtual/range {v74 .. v74}, Landroid/media/MediaCodec;->release()V

    const/16 v74, 0x0

    :cond_34
    if-eqz v26, :cond_35

    .line 351
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 353
    :cond_35
    invoke-direct {v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_20

    move-object v2, v3

    move/from16 v17, v5

    move-object/from16 v66, v15

    move/from16 v108, v20

    move-object/from16 v16, v27

    move/from16 v0, v49

    move-object/from16 v3, v55

    move/from16 v83, v69

    const/4 v15, 0x0

    goto/16 :goto_125

    :catchall_21
    move-exception v0

    :goto_66
    move-object v2, v3

    move-object/from16 v100, v6

    move-object/from16 v28, v8

    move/from16 v43, v12

    move-object/from16 v42, v15

    move/from16 v36, v20

    move-object/from16 v16, v27

    move/from16 v3, v49

    move-object/from16 v1, v55

    move/from16 v83, v69

    goto :goto_63

    :catchall_22
    move-exception v0

    :goto_67
    move-object/from16 v7, v81

    goto :goto_66

    :catchall_23
    move-exception v0

    move/from16 v4, v68

    goto :goto_67

    :catchall_24
    move-exception v0

    move/from16 v4, v68

    move/from16 v5, v73

    goto :goto_67

    :catchall_25
    move-exception v0

    move/from16 v4, v68

    move/from16 v5, v73

    move-object/from16 v7, v81

    move-object v2, v3

    move-object/from16 v100, v6

    move-object/from16 v28, v8

    move-object/from16 v42, v15

    move/from16 v36, v20

    move-object/from16 v16, v27

    move/from16 v3, v49

    move-object/from16 v1, v55

    move/from16 v83, v69

    move-object/from16 v102, v75

    const/16 v43, 0x0

    goto :goto_64

    :cond_36
    move-object v3, v1

    move/from16 v68, v7

    move-object/from16 v27, v16

    move-object/from16 v1, v22

    move/from16 v12, v28

    move/from16 v69, v36

    move-object/from16 v7, v42

    move/from16 v2, v54

    move-object/from16 v13, v56

    move-object/from16 v77, v57

    const-wide/16 v46, 0x0

    move/from16 v16, v5

    .line 355
    :try_start_31
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    .line 356
    invoke-virtual {v4, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 358
    iget-object v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_71

    move/from16 v5, v19

    if-eq v5, v15, :cond_37

    if-nez v32, :cond_37

    const/16 v19, 0x0

    cmpl-float v19, v33, v19

    if-lez v19, :cond_37

    .line 359
    :try_start_32
    iget-object v15, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_27

    move-object/from16 v22, v1

    const/4 v1, 0x1

    :try_start_33
    invoke-static {v15, v1}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v15
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_26

    goto :goto_69

    :catchall_26
    move-exception v0

    :goto_68
    move v13, v2

    move-object v2, v3

    move v15, v5

    move-object/from16 v16, v27

    move-object/from16 v1, v55

    move/from16 v4, v68

    move/from16 v83, v69

    goto/16 :goto_4

    :catchall_27
    move-exception v0

    const/4 v1, 0x1

    goto :goto_68

    :cond_37
    move-object/from16 v22, v1

    const/4 v1, 0x1

    const/4 v15, -0x1

    .line 361
    :goto_69
    const-string v1, "mime"

    if-ltz v4, :cond_38

    move/from16 v19, v6

    :try_start_34
    iget-object v6, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v28, v1

    const-string v1, "video/avc"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_26

    if-nez v1, :cond_39

    const/4 v1, 0x1

    :goto_6a
    move/from16 v36, v69

    goto :goto_6b

    :cond_38
    move-object/from16 v28, v1

    move/from16 v19, v6

    :cond_39
    const/4 v1, 0x0

    goto :goto_6a

    :goto_6b
    if-nez v36, :cond_3a

    if-eqz v1, :cond_3b

    :cond_3a
    move/from16 v54, v2

    move-object v2, v3

    move-object/from16 v86, v7

    move-wide/from16 v84, v9

    move-wide/from16 v9, v17

    move-object/from16 v6, v27

    move/from16 v83, v36

    move/from16 v7, v68

    const/4 v1, -0x1

    const/4 v3, 0x1

    move/from16 v17, v5

    move/from16 v18, v14

    move v5, v15

    move-wide/from16 v14, v20

    goto/16 :goto_70

    .line 878
    :cond_3b
    :try_start_35
    new-instance v1, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v1}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2b

    move-object/from16 v6, v27

    .line 879
    :try_start_36
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    const/4 v15, 0x0

    .line 880
    invoke-virtual {v1, v15}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 881
    invoke-virtual {v1, v2, v14}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 882
    new-instance v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v8, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v8}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    invoke-virtual {v8, v1, v0, v15}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Lorg/telegram/messenger/video/MP4Builder;)V

    iput-object v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_2a

    move/from16 v54, v2

    .line 883
    :try_start_37
    iget-object v2, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_29

    const/4 v1, -0x1

    if-eq v5, v1, :cond_3c

    if-nez v32, :cond_3c

    const/4 v12, 0x1

    :goto_6c
    move-object v1, v3

    move-object v3, v4

    move-object v11, v6

    move-object/from16 v81, v7

    move-wide/from16 v7, v17

    move-object/from16 v4, v55

    const/16 v58, 0x1

    move/from16 v17, v5

    move-wide/from16 v5, v20

    goto :goto_6d

    :cond_3c
    const/4 v12, 0x0

    goto :goto_6c

    :goto_6d
    :try_start_38
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_28

    move-object v2, v1

    move-object/from16 v55, v4

    move-object v6, v11

    move-object/from16 v16, v6

    move/from16 v83, v36

    move/from16 v13, v54

    move-object/from16 v3, v55

    const/4 v0, -0x5

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v66, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v108, 0x0

    goto/16 :goto_125

    :catchall_28
    move-exception v0

    move-object v2, v1

    move-object/from16 v55, v4

    move-object v6, v11

    move-object/from16 v16, v6

    move/from16 v15, v17

    move/from16 v83, v36

    move/from16 v13, v54

    move-object/from16 v1, v55

    move/from16 v4, v68

    goto/16 :goto_5d

    :catchall_29
    move-exception v0

    :goto_6e
    move-object v2, v3

    move/from16 v17, v5

    move-object/from16 v81, v7

    :goto_6f
    const/16 v58, 0x1

    move-object/from16 v16, v6

    move/from16 v15, v17

    move/from16 v83, v36

    move/from16 v13, v54

    move-object/from16 v1, v55

    move/from16 v4, v68

    goto/16 :goto_4

    :catchall_2a
    move-exception v0

    move/from16 v54, v2

    goto :goto_6e

    :catchall_2b
    move-exception v0

    move/from16 v54, v2

    move-object v2, v3

    move/from16 v17, v5

    move-object/from16 v81, v7

    move-object/from16 v6, v27

    goto :goto_6f

    :goto_70
    if-ltz v4, :cond_ad

    const/16 v1, 0x3e8

    .line 380
    :try_start_39
    div-int v3, v1, v7
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_66
    .catchall {:try_start_39 .. :try_end_39} :catchall_67

    mul-int/2addr v3, v1

    move/from16 v20, v4

    int-to-long v3, v3

    move/from16 v21, v1

    const/16 v1, 0x1e

    if-ge v7, v1, :cond_3d

    add-int/lit8 v1, v7, 0x5

    .line 383
    :try_start_3a
    div-int v1, v21, v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_23
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2c

    move-wide/from16 v56, v3

    move/from16 v3, v21

    :goto_71
    mul-int/2addr v1, v3

    int-to-long v3, v1

    move-wide/from16 v60, v3

    goto :goto_77

    :catchall_2c
    move-exception v0

    move-object/from16 v16, v6

    move v4, v7

    move/from16 v15, v17

    :goto_72
    move/from16 v14, v18

    :goto_73
    move/from16 v13, v54

    move-object/from16 v1, v55

    move-object/from16 v7, v86

    goto/16 :goto_4

    :catch_23
    move-exception v0

    move-object/from16 v16, v6

    move v4, v7

    move/from16 v15, v17

    :goto_74
    move/from16 v27, v18

    move/from16 v96, v20

    move-object/from16 v3, v55

    const/4 v8, 0x0

    const/4 v10, -0x5

    :goto_75
    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v42, 0x0

    const/16 v100, 0x0

    :goto_76
    const/16 v102, 0x0

    goto/16 :goto_11a

    :cond_3d
    move-wide/from16 v56, v3

    move/from16 v3, v21

    add-int/lit8 v1, v7, 0x1

    .line 385
    :try_start_3b
    div-int v1, v3, v1

    goto :goto_71

    .line 388
    :goto_77
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_65
    .catchall {:try_start_3b .. :try_end_3b} :catchall_67

    move/from16 v3, v20

    :try_start_3c
    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 389
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_64
    .catchall {:try_start_3c .. :try_end_3c} :catchall_67

    if-eqz v16, :cond_41

    const/high16 v4, 0x44fa0000    # 2000.0f

    cmpg-float v4, v51, v4

    if-gtz v4, :cond_3e

    const v4, 0x27ac40

    :goto_78
    move/from16 v20, v3

    goto :goto_79

    :cond_3e
    const v4, 0x459c4000    # 5000.0f

    cmpg-float v4, v51, v4

    if-gtz v4, :cond_3f

    const v4, 0x2191c0

    goto :goto_78

    :cond_3f
    const v4, 0x17cdc0

    goto :goto_78

    :goto_79
    const v3, 0xe4e1c0

    if-lt v8, v3, :cond_40

    .line 402
    :try_start_3d
    const-string v3, "OMX.google.h264.encoder"
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_24
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2d

    move/from16 v40, v4

    move-object v4, v3

    move/from16 v3, v40

    move-wide/from16 v40, v46

    goto :goto_7d

    :catchall_2d
    move-exception v0

    move v15, v4

    :goto_7a
    move-object/from16 v16, v6

    move v4, v7

    goto :goto_72

    :catch_24
    move-exception v0

    move v15, v4

    :goto_7b
    move-object/from16 v16, v6

    move v4, v7

    goto :goto_74

    :cond_40
    move v3, v4

    move-wide/from16 v40, v46

    :goto_7c
    const/4 v4, 0x0

    goto :goto_7d

    :cond_41
    move/from16 v20, v3

    if-gtz v17, :cond_42

    const v3, 0xe1000

    goto :goto_7c

    :cond_42
    move/from16 v3, v17

    goto :goto_7c

    :goto_7d
    if-lez v8, :cond_43

    .line 408
    :try_start_3e
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_25
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2e

    goto :goto_7e

    :catchall_2e
    move-exception v0

    move v15, v3

    goto :goto_7a

    :catch_25
    move-exception v0

    move v15, v3

    goto :goto_7b

    :cond_43
    :goto_7e
    cmp-long v8, v40, v46

    const-wide/16 v62, -0x1

    move-object/from16 v17, v4

    if-ltz v8, :cond_44

    move v8, v5

    move-wide/from16 v4, v62

    goto :goto_7f

    :cond_44
    move v8, v5

    move-wide/from16 v4, v40

    :goto_7f
    cmp-long v21, v4, v46

    if-ltz v21, :cond_45

    move-object/from16 v27, v6

    .line 417
    :try_start_3f
    iget-object v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v21, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_80
    move-wide/from16 v40, v4

    move-wide/from16 v4, v46

    const/4 v8, 0x0

    goto :goto_84

    :catchall_2f
    move-exception v0

    move v15, v3

    move v4, v7

    move/from16 v14, v18

    move-object/from16 v16, v27

    goto/16 :goto_73

    :catch_26
    move-exception v0

    move v15, v3

    move v4, v7

    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/4 v8, 0x0

    const/4 v10, -0x5

    const/16 v28, 0x0

    const/16 v36, 0x0

    :goto_81
    const/16 v37, 0x0

    const/16 v42, 0x0

    const/16 v100, 0x0

    :goto_82
    const/16 v102, 0x0

    :goto_83
    move/from16 v27, v18

    goto/16 :goto_11a

    :cond_45
    move-object/from16 v27, v6

    move/from16 v21, v8

    cmp-long v6, v14, v46

    if-lez v6, :cond_46

    .line 419
    iget-object v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v6, v14, v15, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_26
    .catchall {:try_start_3f .. :try_end_3f} :catchall_2f

    goto :goto_80

    .line 421
    :cond_46
    :try_start_40
    iget-object v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-wide/from16 v40, v4

    move-wide/from16 v4, v46

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_63
    .catchall {:try_start_40 .. :try_end_40} :catchall_66

    :goto_84
    if-eqz v11, :cond_49

    .line 426
    :try_start_41
    iget-object v6, v11, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    if-nez v6, :cond_49

    const/16 v6, 0x5a

    if-eq v12, v6, :cond_48

    const/16 v6, 0x10e

    if-ne v12, v6, :cond_47

    goto :goto_85

    .line 431
    :cond_47
    iget v6, v11, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 432
    iget v4, v11, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    move v5, v4

    move v4, v6

    goto :goto_86

    :catchall_30
    move-exception v0

    move v15, v3

    move v4, v7

    move/from16 v36, v8

    move/from16 v43, v36

    move/from16 v14, v18

    move-object/from16 v16, v27

    move/from16 v13, v54

    move-object/from16 v1, v55

    move-object/from16 v7, v86

    const/4 v3, -0x5

    const/16 v28, 0x0

    const/16 v42, 0x0

    goto/16 :goto_6

    :catch_27
    move-exception v0

    move v15, v3

    move v4, v7

    move/from16 v36, v8

    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/4 v8, 0x0

    const/4 v10, -0x5

    const/16 v28, 0x0

    goto :goto_81

    .line 428
    :cond_48
    :goto_85
    iget v4, v11, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 429
    iget v5, v11, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_27
    .catchall {:try_start_41 .. :try_end_41} :catchall_30

    goto :goto_86

    :cond_49
    move/from16 v5, v18

    move/from16 v4, v54

    :goto_86
    if-eqz v17, :cond_4a

    .line 441
    :try_start_42
    invoke-static/range {v17 .. v17}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_28
    .catchall {:try_start_42 .. :try_end_42} :catchall_30

    goto :goto_87

    :catch_28
    :cond_4a
    const/4 v6, 0x0

    :goto_87
    if-nez v6, :cond_4b

    .line 448
    :try_start_43
    invoke-direct {v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_29
    .catchall {:try_start_43 .. :try_end_43} :catchall_31

    goto :goto_89

    :catchall_31
    move-exception v0

    move v15, v3

    move-object/from16 v100, v6

    move v4, v7

    move/from16 v36, v8

    move/from16 v43, v36

    move/from16 v14, v18

    move-object/from16 v16, v27

    move/from16 v13, v54

    move-object/from16 v1, v55

    move-object/from16 v7, v86

    const/4 v3, -0x5

    const/16 v28, 0x0

    const/16 v42, 0x0

    goto/16 :goto_58

    :catch_29
    move-exception v0

    move v15, v3

    move-object/from16 v100, v6

    move v4, v7

    move/from16 v36, v8

    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/4 v8, 0x0

    const/4 v10, -0x5

    const/16 v28, 0x0

    :goto_88
    const/16 v37, 0x0

    const/16 v42, 0x0

    goto/16 :goto_82

    .line 451
    :cond_4b
    :goto_89
    :try_start_44
    sget-boolean v17, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_62
    .catchall {:try_start_44 .. :try_end_44} :catchall_65

    if-eqz v17, :cond_4c

    .line 452
    :try_start_45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v67, v9

    const-string v9, "create encoder with w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bitrate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_2a
    .catchall {:try_start_45 .. :try_end_45} :catchall_32

    goto :goto_8e

    :catchall_32
    move-exception v0

    :goto_8a
    move v15, v3

    move-object/from16 v100, v6

    move v4, v7

    :goto_8b
    move/from16 v14, v18

    move-object/from16 v16, v27

    move/from16 v13, v54

    move-object/from16 v1, v55

    move-object/from16 v7, v86

    goto/16 :goto_5a

    :catch_2a
    move-exception v0

    :goto_8c
    move v15, v3

    move-object/from16 v100, v6

    move v4, v7

    :goto_8d
    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/4 v8, 0x0

    const/4 v10, -0x5

    const/16 v28, 0x0

    const/16 v36, 0x0

    goto :goto_88

    :cond_4c
    move-wide/from16 v67, v9

    .line 454
    :goto_8e
    :try_start_46
    iget-object v8, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v8, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    .line 455
    const-string v9, "color-format"

    const v10, 0x7f000789

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 456
    const-string v9, "bitrate"

    invoke-virtual {v8, v9, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_62
    .catchall {:try_start_46 .. :try_end_46} :catchall_65

    if-eqz v16, :cond_4d

    .line 459
    :try_start_47
    const-string v9, "bitrate-mode"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_2a
    .catchall {:try_start_47 .. :try_end_47} :catchall_32

    .line 461
    :cond_4d
    :try_start_48
    const-string v9, "max-bitrate"

    invoke-virtual {v8, v9, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 462
    const-string v9, "frame-rate"

    invoke-virtual {v8, v9, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 463
    const-string v9, "i-frame-interval"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 467
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_62
    .catchall {:try_start_48 .. :try_end_48} :catchall_65

    const/16 v10, 0x18

    if-lt v9, v10, :cond_53

    .line 468
    :try_start_49
    const-string v10, "color-transfer"

    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_2d
    .catchall {:try_start_49 .. :try_end_49} :catchall_35

    if-eqz v10, :cond_4e

    .line 469
    :try_start_4a
    const-string v10, "color-transfer"

    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_2a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_32

    goto :goto_8f

    :cond_4e
    const/4 v10, 0x0

    .line 471
    :goto_8f
    :try_start_4b
    const-string v2, "color-standard"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_2d
    .catchall {:try_start_4b .. :try_end_4b} :catchall_35

    if-eqz v2, :cond_4f

    .line 472
    :try_start_4c
    const-string v2, "color-standard"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_2b
    .catchall {:try_start_4c .. :try_end_4c} :catchall_33

    :goto_90
    move/from16 v16, v3

    goto :goto_91

    :catchall_33
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_8a

    :catch_2b
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_8c

    :cond_4f
    const/4 v2, 0x0

    goto :goto_90

    .line 474
    :goto_91
    :try_start_4d
    const-string v3, "color-range"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 475
    const-string v3, "color-range"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_2c
    .catchall {:try_start_4d .. :try_end_4d} :catchall_34

    :goto_92
    move-object/from16 v32, v1

    goto :goto_95

    :catchall_34
    move-exception v0

    :goto_93
    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move/from16 v15, v16

    goto/16 :goto_8b

    :catch_2c
    move-exception v0

    :goto_94
    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move/from16 v15, v16

    goto/16 :goto_8d

    :cond_50
    const/4 v3, 0x0

    goto :goto_92

    :goto_95
    const/4 v1, 0x6

    if-eq v10, v1, :cond_51

    const/4 v1, 0x7

    if-ne v10, v1, :cond_52

    :cond_51
    const/4 v1, 0x6

    if-ne v2, v1, :cond_52

    move-wide/from16 v69, v14

    const/4 v1, 0x1

    goto :goto_96

    :cond_52
    move-wide/from16 v69, v14

    const/4 v1, 0x0

    goto :goto_96

    :catchall_35
    move-exception v0

    move/from16 v16, v3

    goto :goto_93

    :catch_2d
    move-exception v0

    move/from16 v16, v3

    goto :goto_94

    :cond_53
    move-object/from16 v32, v1

    move/from16 v16, v3

    move-wide/from16 v69, v14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 489
    :goto_96
    :try_start_4e
    invoke-virtual {v6}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_61
    .catchall {:try_start_4e .. :try_end_4e} :catchall_64

    .line 490
    :try_start_4f
    const-string v15, "c2.qti.avc.encoder"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_60
    .catchall {:try_start_4f .. :try_end_4f} :catchall_63

    .line 491
    :try_start_50
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    const-string v1, "selected encoder "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v15, 0x1

    .line 492
    invoke-virtual {v6, v8, v1, v1, v15}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_5f
    .catchall {:try_start_50 .. :try_end_50} :catchall_62

    move-object/from16 v42, v14

    .line 493
    :try_start_51
    new-instance v14, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v14, v1}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_5e
    .catchall {:try_start_51 .. :try_end_51} :catchall_61

    .line 494
    :try_start_52
    invoke-virtual {v14}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 495
    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_5d
    .catchall {:try_start_52 .. :try_end_52} :catchall_60

    if-nez v35, :cond_55

    if-eqz v17, :cond_55

    .line 498
    :try_start_53
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    .line 499
    iput v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    .line 500
    iput v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    .line 501
    iput v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorRange:I

    const/16 v2, 0x18

    if-lt v9, v2, :cond_54

    .line 503
    const-string v2, "color-transfer"
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_2f
    .catchall {:try_start_53 .. :try_end_53} :catchall_37

    const/4 v3, 0x3

    :try_start_54
    invoke-virtual {v8, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_2e
    .catchall {:try_start_54 .. :try_end_54} :catchall_36

    goto :goto_99

    :catchall_36
    move-exception v0

    :goto_97
    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move-object/from16 v102, v14

    move/from16 v15, v16

    move/from16 v14, v18

    move-object/from16 v16, v27

    move/from16 v13, v54

    move-object/from16 v1, v55

    move-object/from16 v7, v86

    goto/16 :goto_51

    :catch_2e
    move-exception v0

    :goto_98
    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move-object/from16 v102, v14

    move/from16 v15, v16

    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/4 v8, 0x0

    const/4 v10, -0x5

    const/16 v28, 0x0

    const/16 v37, 0x0

    goto/16 :goto_83

    :catchall_37
    move-exception v0

    const/4 v3, 0x3

    goto :goto_97

    :catch_2f
    move-exception v0

    const/4 v3, 0x3

    goto :goto_98

    :cond_54
    const/4 v3, 0x3

    :goto_99
    move-object v10, v1

    goto :goto_9a

    :cond_55
    const/4 v3, 0x3

    move-object/from16 v10, v35

    .line 507
    :goto_9a
    :try_start_55
    new-instance v1, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_5d
    .catchall {:try_start_55 .. :try_end_55} :catchall_60

    move-object/from16 v76, v13

    int-to-float v13, v7

    move-object v2, v14

    const/4 v14, 0x0

    move/from16 v80, v3

    const/4 v3, 0x0

    move-object/from16 v102, v2

    move/from16 v98, v4

    move/from16 v99, v5

    move-object/from16 v100, v6

    move/from16 v89, v7

    move/from16 v101, v9

    move-object/from16 v17, v10

    move-object v7, v11

    move/from16 v9, v18

    move/from16 v11, v19

    move/from16 v96, v20

    move/from16 v87, v21

    move-object/from16 v88, v22

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v22, v27

    move-object/from16 v103, v28

    move-object/from16 v15, v30

    move-object/from16 v97, v32

    move/from16 v94, v33

    move/from16 v10, v37

    move-object/from16 v107, v45

    move/from16 v8, v54

    move-object/from16 v95, v55

    move-object/from16 v106, v59

    move-wide/from16 v92, v67

    move-wide/from16 v90, v69

    move-object/from16 v104, v76

    move-object/from16 v105, v77

    move-object/from16 v18, p1

    move/from16 v19, v16

    move-object/from16 v16, v31

    :try_start_56
    invoke-direct/range {v1 .. v18}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_5c
    .catchall {:try_start_56 .. :try_end_56} :catchall_5f

    move v7, v8

    move v8, v9

    move v5, v10

    move v6, v11

    move-object/from16 v10, v17

    move-object/from16 v13, v18

    const/16 v2, 0x18

    move/from16 v3, v101

    if-lt v3, v2, :cond_57

    if-eqz v10, :cond_57

    .line 508
    :try_start_57
    invoke-virtual {v10}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result v2

    if-eqz v2, :cond_57

    const/4 v9, 0x1

    .line 510
    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    .line 511
    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v3
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_31
    .catchall {:try_start_57 .. :try_end_57} :catchall_39

    const/4 v15, 0x0

    .line 509
    :try_start_58
    invoke-virtual {v1, v2, v3, v15}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_56
    :goto_9b
    move-object/from16 v2, p0

    move-object/from16 v3, v97

    goto/16 :goto_a1

    :catchall_38
    move-exception v0

    :goto_9c
    move-object/from16 v2, p0

    move-object/from16 v28, v1

    move v13, v7

    move v14, v8

    move/from16 v43, v15

    move/from16 v15, v19

    move-object/from16 v16, v22

    move-object/from16 v7, v86

    move/from16 v4, v89

    move-object/from16 v1, v95

    goto/16 :goto_1d

    :catch_30
    move-exception v0

    :goto_9d
    move-object/from16 v2, p0

    move-object/from16 v28, v1

    move/from16 v54, v7

    move/from16 v27, v8

    move/from16 v15, v19

    move-object/from16 v16, v22

    move/from16 v4, v89

    move-object/from16 v3, v95

    const/4 v8, 0x0

    const/4 v10, -0x5

    :goto_9e
    const/16 v37, 0x0

    goto/16 :goto_11a

    :catchall_39
    move-exception v0

    const/4 v15, 0x0

    goto :goto_9c

    :catch_31
    move-exception v0

    const/4 v15, 0x0

    goto :goto_9d

    :cond_57
    const/4 v15, 0x0

    if-nez v29, :cond_56

    .line 514
    invoke-static {v8, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f666666    # 0.9f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_56

    if-eqz v34, :cond_58

    move v10, v15

    goto :goto_9f

    :cond_58
    const/4 v10, 0x3

    :goto_9f
    const/4 v9, 0x1

    .line 516
    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v2

    if-eqz v34, :cond_59

    move v10, v15

    goto :goto_a0

    :cond_59
    const/4 v10, 0x3

    :goto_a0
    const/4 v9, 0x0

    .line 517
    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-virtual {v1, v2, v3, v15}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_30
    .catchall {:try_start_58 .. :try_end_58} :catchall_38

    goto :goto_9b

    .line 521
    :goto_a1
    :try_start_59
    invoke-direct {v2, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->getDecoderByFormat(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_5b
    .catchall {:try_start_59 .. :try_end_59} :catchall_5e

    .line 522
    :try_start_5a
    invoke-virtual {v1}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6, v15}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 523
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_5d

    if-eqz v44, :cond_5a

    .line 532
    :try_start_5b
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v3, Landroid/media/MediaMuxer;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_33
    .catchall {:try_start_5b .. :try_end_5b} :catchall_3b

    const/4 v10, 0x1

    :try_start_5c
    invoke-direct {v3, v5, v10}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Landroid/media/MediaMuxer;)V

    iput-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_32
    .catchall {:try_start_5c .. :try_end_5c} :catchall_3a

    move-object/from16 v11, v22

    :goto_a2
    move/from16 v5, v87

    goto :goto_a9

    :catchall_3a
    move-exception v0

    :goto_a3
    move-object/from16 v28, v1

    move-object/from16 v66, v4

    move v13, v7

    move v14, v8

    move/from16 v43, v15

    move/from16 v15, v19

    move-object/from16 v16, v22

    :goto_a4
    move-object/from16 v7, v86

    move/from16 v4, v89

    move-object/from16 v1, v95

    const/4 v3, -0x5

    goto/16 :goto_128

    :catch_32
    move-exception v0

    :goto_a5
    move-object/from16 v28, v1

    move-object/from16 v37, v6

    move/from16 v54, v7

    move/from16 v27, v8

    move/from16 v15, v19

    move-object/from16 v16, v22

    :goto_a6
    move-object/from16 v3, v95

    const/4 v10, -0x5

    :goto_a7
    move-object v8, v4

    :goto_a8
    move/from16 v4, v89

    goto/16 :goto_11a

    :catchall_3b
    move-exception v0

    const/4 v10, 0x1

    goto :goto_a3

    :catch_33
    move-exception v0

    const/4 v10, 0x1

    goto :goto_a5

    :cond_5a
    const/4 v10, 0x1

    .line 534
    :try_start_5d
    new-instance v3, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v3}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_5a
    .catchall {:try_start_5d .. :try_end_5d} :catchall_5d

    move-object/from16 v11, v22

    .line 535
    :try_start_5e
    invoke-virtual {v3, v11}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 536
    invoke-virtual {v3, v15}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 537
    invoke-virtual {v3, v7, v8}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 538
    new-instance v5, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v9, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v9}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v12, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move-object/from16 v14, v107

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v9, v3, v0, v12}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Lorg/telegram/messenger/video/MP4Builder;)V

    iput-object v5, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_59
    .catchall {:try_start_5e .. :try_end_5e} :catchall_5c

    goto :goto_a2

    :goto_a9
    if-ltz v5, :cond_66

    .line 542
    :try_start_5f
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v9, v94

    sub-float v12, v9, v3

    .line 543
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_37
    .catchall {:try_start_5f .. :try_end_5f} :catchall_3e

    const v12, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v12

    if-gez v3, :cond_5d

    :try_start_60
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    move-object/from16 v3, v103

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "audio/mp4a-latm"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5c

    goto :goto_ab

    :catchall_3c
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v66, v4

    move v13, v7

    move v14, v8

    move-object/from16 v16, v11

    move/from16 v43, v15

    move/from16 v15, v19

    goto/16 :goto_a4

    :catch_34
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v37, v6

    move/from16 v54, v7

    move/from16 v27, v8

    move-object/from16 v16, v11

    :goto_aa
    move/from16 v15, v19

    goto/16 :goto_a6

    :cond_5b
    move-object/from16 v3, v103

    :goto_ab
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "audio/mpeg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_34
    .catchall {:try_start_60 .. :try_end_60} :catchall_3c

    if-eqz v12, :cond_5e

    :cond_5c
    move v12, v10

    goto :goto_ac

    :cond_5d
    move-object/from16 v3, v103

    :cond_5e
    move v12, v15

    .line 545
    :goto_ac
    :try_start_61
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "audio/unknown"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v5, -0x1

    :cond_5f
    if-ltz v5, :cond_65

    if-eqz v12, :cond_62

    .line 551
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v3, v0, v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3

    .line 552
    iget-object v9, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_37
    .catchall {:try_start_61 .. :try_end_61} :catchall_3e

    .line 554
    :try_start_62
    const-string v9, "max-input-size"

    invoke-virtual {v0, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_35
    .catchall {:try_start_62 .. :try_end_62} :catchall_3c

    goto :goto_ad

    :catch_35
    move-exception v0

    .line 556
    :try_start_63
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v15

    :goto_ad
    if-gtz v0, :cond_60

    const/high16 v0, 0x10000

    .line 561
    :cond_60
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_37
    .catchall {:try_start_63 .. :try_end_63} :catchall_3e

    move/from16 v54, v7

    move-object/from16 v16, v11

    move-wide/from16 v6, v90

    const-wide/16 v10, 0x0

    cmp-long v14, v6, v10

    if-lez v14, :cond_61

    .line 564
    :try_start_64
    iget-object v14, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v6, v7, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_b0

    :catchall_3d
    move-exception v0

    :goto_ae
    move-object/from16 v28, v1

    move-object/from16 v66, v4

    move v14, v8

    move/from16 v43, v15

    move/from16 v15, v19

    move/from16 v13, v54

    goto/16 :goto_a4

    :catch_36
    move-exception v0

    :goto_af
    move-object/from16 v28, v1

    move/from16 v27, v8

    move/from16 v15, v19

    move-object/from16 v3, v95

    const/4 v10, -0x5

    const/16 v37, 0x0

    goto/16 :goto_a7

    .line 566
    :cond_61
    iget-object v14, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v10, v11, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_b0
    move-wide/from16 v46, v10

    move-wide/from16 v17, v92

    move-object v10, v9

    move v9, v0

    const/4 v0, 0x0

    goto/16 :goto_b2

    :catchall_3e
    move-exception v0

    move/from16 v54, v7

    move-object/from16 v16, v11

    goto :goto_ae

    :catch_37
    move-exception v0

    move/from16 v54, v7

    move-object/from16 v16, v11

    goto :goto_af

    :cond_62
    move/from16 v54, v7

    move-object/from16 v16, v11

    move-wide/from16 v6, v90

    const-wide/16 v10, 0x0

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 570
    new-instance v3, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;

    move-object/from16 v14, v88

    invoke-direct {v3, v14, v5}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;-><init>(Ljava/lang/String;I)V

    move-wide/from16 v46, v10

    move-wide/from16 v10, v92

    cmp-long v14, v10, v46

    if-lez v14, :cond_63

    .line 572
    invoke-virtual {v3, v10, v11}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setEndTimeUs(J)V

    :cond_63
    cmp-long v14, v6, v46

    if-lez v14, :cond_64

    .line 575
    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartTimeUs(J)V

    .line 577
    :cond_64
    invoke-virtual {v3, v9}, Lorg/telegram/messenger/video/audio_input/AudioInput;->setVolume(F)V

    .line 578
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 581
    new-instance v3, Lorg/telegram/messenger/video/AudioRecoder;

    move-wide/from16 v17, v10

    move-wide/from16 v9, v84

    invoke-direct {v3, v0, v9, v10}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_36
    .catchall {:try_start_64 .. :try_end_64} :catchall_3d

    .line 582
    :try_start_65
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    iget-object v9, v3, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_38
    .catchall {:try_start_65 .. :try_end_65} :catchall_3d

    move-object v9, v3

    move v3, v0

    move-object v0, v9

    move v9, v15

    :goto_b1
    const/4 v10, 0x0

    goto :goto_b2

    :catch_38
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v37, v3

    move/from16 v27, v8

    goto/16 :goto_aa

    :cond_65
    move/from16 v54, v7

    move-object/from16 v16, v11

    move-wide/from16 v6, v90

    move-wide/from16 v17, v92

    const-wide/16 v46, 0x0

    move v9, v15

    const/4 v0, 0x0

    const/4 v3, -0x5

    goto :goto_b1

    :goto_b2
    move/from16 v109, v5

    move-object v5, v0

    move v0, v9

    move/from16 v9, v109

    goto :goto_b3

    :cond_66
    move/from16 v54, v7

    move-object/from16 v16, v11

    move-wide/from16 v9, v84

    move-wide/from16 v6, v90

    move-wide/from16 v17, v92

    const-wide/16 v46, 0x0

    .line 585
    :try_start_66
    iget-object v0, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_58
    .catchall {:try_start_66 .. :try_end_66} :catchall_5b

    if-nez v0, :cond_67

    .line 587
    :try_start_67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    new-instance v3, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;

    invoke-direct {v3, v9, v10}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;-><init>(J)V

    .line 589
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 592
    new-instance v3, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v3, v0, v9, v10}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_36
    .catchall {:try_start_67 .. :try_end_67} :catchall_3d

    .line 593
    :try_start_68
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    iget-object v9, v3, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v0
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_38
    .catchall {:try_start_68 .. :try_end_68} :catchall_3d

    move v9, v5

    move v12, v15

    const/4 v10, 0x0

    move-object v5, v3

    move v3, v0

    move v0, v12

    goto :goto_b3

    :cond_67
    move v9, v5

    move v0, v15

    const/4 v3, -0x5

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    :goto_b3
    if-nez v5, :cond_68

    const/4 v11, 0x1

    goto :goto_b4

    :cond_68
    move v11, v15

    .line 600
    :goto_b4
    :try_start_69
    invoke-direct {v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_57
    .catchall {:try_start_69 .. :try_end_69} :catchall_5b

    const-wide/32 v20, -0x80000000

    move v14, v11

    move/from16 v22, v15

    move/from16 v33, v22

    move/from16 v34, v33

    move/from16 v35, v34

    move-wide/from16 v43, v20

    move-wide/from16 v20, v46

    move-wide/from16 v30, v20

    move-wide/from16 v64, v62

    move-wide/from16 v66, v64

    const/16 v32, 0x1

    move-object v11, v10

    const/4 v10, -0x5

    :goto_b5
    if-eqz v33, :cond_6a

    if-nez v12, :cond_69

    if-nez v14, :cond_69

    goto :goto_b6

    :cond_69
    move-object/from16 v28, v1

    move-object/from16 v37, v5

    move v9, v8

    move v1, v15

    move v12, v1

    move/from16 v5, v54

    move-object/from16 v7, v86

    move-object/from16 v3, v95

    move-object v15, v4

    move/from16 v4, v89

    goto/16 :goto_11c

    .line 603
    :cond_6a
    :goto_b6
    :try_start_6a
    invoke-direct {v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_56
    .catchall {:try_start_6a .. :try_end_6a} :catchall_5a

    if-eqz v5, :cond_6b

    .line 606
    :try_start_6b
    iget-object v14, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v5, v14, v3}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;I)Z

    move-result v14
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_39
    .catchall {:try_start_6b .. :try_end_6b} :catchall_3f

    goto :goto_b8

    :catchall_3f
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v66, v4

    move v14, v8

    move v3, v10

    move/from16 v43, v15

    move/from16 v15, v19

    move/from16 v13, v54

    move-object/from16 v7, v86

    move/from16 v4, v89

    move-object/from16 v1, v95

    goto/16 :goto_128

    :catch_39
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v37, v5

    move/from16 v27, v8

    move/from16 v15, v19

    :goto_b7
    move-object/from16 v3, v95

    goto/16 :goto_a7

    :cond_6b
    :goto_b8
    if-nez v22, :cond_79

    .line 611
    :try_start_6c
    iget-object v15, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v15
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_41
    .catchall {:try_start_6c .. :try_end_6c} :catchall_47

    move-object/from16 v37, v5

    move/from16 v5, v96

    if-ne v15, v5, :cond_6f

    move/from16 v45, v10

    move-object/from16 v49, v11

    const-wide/16 v10, 0x9c4

    .line 613
    :try_start_6d
    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    if-ltz v15, :cond_6d

    .line 616
    invoke-virtual {v4, v15}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 617
    iget-object v11, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_3b
    .catchall {:try_start_6d .. :try_end_6d} :catchall_41

    move-object/from16 v23, v4

    const/4 v4, 0x0

    :try_start_6e
    invoke-virtual {v11, v10, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v26
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_3c
    .catchall {:try_start_6e .. :try_end_6e} :catchall_42

    if-gez v26, :cond_6c

    const-wide/16 v27, 0x0

    const/16 v29, 0x4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v24, v15

    .line 619
    :try_start_6f
    invoke-virtual/range {v23 .. v29}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_3a
    .catchall {:try_start_6f .. :try_end_6f} :catchall_40

    move-object/from16 v4, v23

    const/16 v22, 0x1

    goto/16 :goto_bd

    :catchall_40
    move-exception v0

    move-object/from16 v28, v1

    move v14, v8

    move/from16 v15, v19

    move-object/from16 v66, v23

    :goto_b9
    move/from16 v3, v45

    move/from16 v13, v54

    move-object/from16 v7, v86

    move/from16 v4, v89

    move-object/from16 v1, v95

    :goto_ba
    const/16 v43, 0x0

    goto/16 :goto_128

    :catch_3a
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v96, v5

    move/from16 v27, v8

    move/from16 v15, v19

    move-object/from16 v8, v23

    move/from16 v10, v45

    move/from16 v4, v89

    move-object/from16 v3, v95

    goto/16 :goto_11a

    :cond_6c
    move/from16 v24, v15

    .line 622
    :try_start_70
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v27

    const/16 v29, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v29}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_3c
    .catchall {:try_start_70 .. :try_end_70} :catchall_42

    move-object/from16 v4, v23

    .line 623
    :try_start_71
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_3b
    .catchall {:try_start_71 .. :try_end_71} :catchall_41

    goto :goto_bd

    :catchall_41
    move-exception v0

    :goto_bb
    move-object/from16 v28, v1

    move-object/from16 v66, v4

    move v14, v8

    move/from16 v15, v19

    goto :goto_b9

    :catch_3b
    move-exception v0

    :goto_bc
    move-object/from16 v28, v1

    move/from16 v96, v5

    move/from16 v27, v8

    move/from16 v15, v19

    move/from16 v10, v45

    goto/16 :goto_b7

    :catchall_42
    move-exception v0

    move-object/from16 v4, v23

    goto :goto_bb

    :catch_3c
    move-exception v0

    move-object/from16 v4, v23

    goto :goto_bc

    :cond_6d
    :goto_bd
    move/from16 v68, v3

    move/from16 v55, v9

    move/from16 v59, v12

    move-object/from16 v11, v49

    move-object/from16 v3, v95

    :cond_6e
    :goto_be
    const/4 v12, 0x0

    goto/16 :goto_c9

    :cond_6f
    move/from16 v45, v10

    move-object/from16 v49, v11

    if-eqz v12, :cond_77

    const/4 v10, -0x1

    if-eq v9, v10, :cond_76

    if-ne v15, v9, :cond_76

    .line 627
    :try_start_72
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_3e
    .catchall {:try_start_72 .. :try_end_72} :catchall_44

    const/16 v15, 0x1c

    if-lt v11, v15, :cond_70

    .line 628
    :try_start_73
    iget-object v11, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v23

    int-to-long v10, v0

    cmp-long v10, v23, v10

    if-lez v10, :cond_70

    const-wide/16 v10, 0x400

    add-long v10, v23, v10

    long-to-int v0, v10

    .line 631
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_3b
    .catchall {:try_start_73 .. :try_end_73} :catchall_41

    goto :goto_bf

    :cond_70
    move-object/from16 v11, v49

    .line 634
    :goto_bf
    :try_start_74
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v15, 0x0

    invoke-virtual {v10, v11, v15}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_3e
    .catchall {:try_start_74 .. :try_end_74} :catchall_44

    move-object/from16 v15, v95

    :try_start_75
    iput v10, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v10, :cond_71

    .line 636
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v55, v9

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iput-wide v9, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 637
    iget-object v9, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_c5

    :catchall_43
    move-exception v0

    :goto_c0
    move-object/from16 v28, v1

    move-object/from16 v66, v4

    move v14, v8

    move-object v1, v15

    :goto_c1
    move/from16 v15, v19

    move/from16 v3, v45

    :goto_c2
    move/from16 v13, v54

    move-object/from16 v7, v86

    move/from16 v4, v89

    goto/16 :goto_ba

    :catch_3d
    move-exception v0

    :goto_c3
    move-object/from16 v28, v1

    move/from16 v96, v5

    move/from16 v27, v8

    move-object v3, v15

    :goto_c4
    move/from16 v15, v19

    move/from16 v10, v45

    goto/16 :goto_a7

    :cond_71
    move/from16 v55, v9

    const/4 v9, 0x0

    .line 639
    iput v9, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v22, 0x1

    .line 642
    :goto_c5
    iget v9, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v9, :cond_73

    cmp-long v9, v17, v46

    if-ltz v9, :cond_72

    iget-wide v9, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v9, v9, v17

    if-gez v9, :cond_73

    :cond_72
    const/4 v9, 0x0

    goto :goto_c6

    :cond_73
    move/from16 v68, v3

    move-object/from16 v23, v11

    move/from16 v59, v12

    goto :goto_c7

    .line 643
    :goto_c6
    iput v9, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 644
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 645
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    move/from16 v59, v12

    invoke-virtual {v10, v3, v11, v15, v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v12

    cmp-long v9, v12, v46

    if-eqz v9, :cond_75

    .line 647
    iget-object v9, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v9, :cond_75

    move-object/from16 v23, v11

    .line 648
    iget-wide v10, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v24, v10, v6

    cmp-long v24, v24, v20

    if-lez v24, :cond_74

    sub-long v20, v10, v6

    :cond_74
    move/from16 v68, v3

    move-wide/from16 v10, v20

    long-to-float v3, v10

    div-float v3, v3, v50

    div-float v3, v3, v51

    .line 651
    invoke-interface {v9, v12, v13, v3}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_3d
    .catchall {:try_start_75 .. :try_end_75} :catchall_43

    move-wide/from16 v20, v10

    goto :goto_c7

    :cond_75
    move/from16 v68, v3

    move-object/from16 v23, v11

    :goto_c7
    move-object v3, v15

    move-object/from16 v11, v23

    goto/16 :goto_be

    :catchall_44
    move-exception v0

    move-object/from16 v15, v95

    goto :goto_c0

    :catch_3e
    move-exception v0

    move-object/from16 v15, v95

    goto :goto_c3

    :cond_76
    move/from16 v68, v3

    move/from16 v55, v9

    move/from16 v59, v12

    move-object/from16 v3, v95

    goto :goto_c8

    :cond_77
    move/from16 v68, v3

    move/from16 v55, v9

    move/from16 v59, v12

    move-object/from16 v3, v95

    const/4 v10, -0x1

    :goto_c8
    move-object/from16 v11, v49

    if-ne v15, v10, :cond_6e

    const/4 v12, 0x1

    :goto_c9
    if-eqz v12, :cond_78

    const-wide/16 v9, 0x9c4

    .line 659
    :try_start_76
    invoke-virtual {v4, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v24
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_40
    .catchall {:try_start_76 .. :try_end_76} :catchall_46

    if-ltz v24, :cond_78

    const-wide/16 v27, 0x0

    const/16 v29, 0x4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v4

    .line 661
    :try_start_77
    invoke-virtual/range {v23 .. v29}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_3f
    .catchall {:try_start_77 .. :try_end_77} :catchall_45

    move v9, v0

    const/4 v12, 0x1

    goto :goto_ce

    :catchall_45
    move-exception v0

    move-object/from16 v4, v23

    :goto_ca
    move-object/from16 v28, v1

    move-object v1, v3

    move-object/from16 v66, v4

    move v14, v8

    goto/16 :goto_c1

    :catch_3f
    move-exception v0

    move-object/from16 v4, v23

    :goto_cb
    move-object/from16 v28, v1

    move/from16 v96, v5

    move/from16 v27, v8

    goto/16 :goto_c4

    :catchall_46
    move-exception v0

    goto :goto_ca

    :catch_40
    move-exception v0

    goto :goto_cb

    :cond_78
    :goto_cc
    move v9, v0

    move/from16 v12, v22

    goto :goto_ce

    :catchall_47
    move-exception v0

    move/from16 v45, v10

    move-object/from16 v3, v95

    goto :goto_ca

    :catch_41
    move-exception v0

    move-object/from16 v37, v5

    move/from16 v45, v10

    move-object/from16 v3, v95

    move/from16 v5, v96

    move-object/from16 v28, v1

    move/from16 v27, v8

    :goto_cd
    move/from16 v15, v19

    goto/16 :goto_a7

    :cond_79
    move/from16 v68, v3

    move-object/from16 v37, v5

    move/from16 v55, v9

    move/from16 v45, v10

    move-object/from16 v49, v11

    move/from16 v59, v12

    move-object/from16 v3, v95

    move/from16 v5, v96

    goto :goto_cc

    :goto_ce
    xor-int/lit8 v0, v34, 0x1

    move v15, v0

    move-object v13, v11

    move/from16 v22, v12

    move-wide/from16 v11, v43

    move/from16 v10, v45

    const/4 v0, 0x1

    :goto_cf
    if-nez v15, :cond_7b

    if-eqz v0, :cond_7a

    goto :goto_d0

    :cond_7a
    move-object/from16 v95, v3

    move/from16 v96, v5

    move v0, v9

    move-wide/from16 v43, v11

    move-object v11, v13

    move-object/from16 v5, v37

    move/from16 v9, v55

    move/from16 v12, v59

    move/from16 v3, v68

    const/4 v15, 0x0

    move-object/from16 v13, p1

    goto/16 :goto_b5

    .line 670
    :cond_7b
    :goto_d0
    :try_start_78
    invoke-direct {v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_55
    .catchall {:try_start_78 .. :try_end_78} :catchall_59

    move/from16 v23, v9

    if-eqz p2, :cond_7c

    const-wide/16 v24, 0x55f0

    move-wide/from16 v109, v24

    move-object/from16 v25, v13

    move/from16 v24, v14

    move-wide/from16 v13, v109

    :goto_d1
    move/from16 v26, v15

    move-object/from16 v15, v100

    goto :goto_d2

    :cond_7c
    move-object/from16 v25, v13

    move/from16 v24, v14

    const-wide/16 v13, 0x9c4

    goto :goto_d1

    .line 671
    :goto_d2
    :try_start_79
    invoke-virtual {v15, v3, v13, v14}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v13
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_54
    .catchall {:try_start_79 .. :try_end_79} :catchall_58

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7d

    move-object/from16 v28, v1

    move/from16 v96, v5

    move-wide/from16 v69, v6

    move/from16 v27, v8

    move-wide/from16 v43, v11

    move/from16 v8, v98

    move/from16 v12, v99

    move-object/from16 v9, v104

    move-object/from16 v5, v105

    move-object/from16 v78, v106

    const/4 v1, 0x0

    const/4 v7, 0x3

    goto/16 :goto_e8

    :cond_7d
    const/4 v14, -0x3

    if-ne v13, v14, :cond_7e

    move-object/from16 v28, v1

    move/from16 v96, v5

    move-wide/from16 v69, v6

    move/from16 v27, v8

    move-wide/from16 v43, v11

    move/from16 v8, v98

    move/from16 v12, v99

    move-object/from16 v9, v104

    move-object/from16 v5, v105

    move-object/from16 v78, v106

    :goto_d3
    const/4 v7, 0x3

    :goto_d4
    const/4 v14, -0x1

    move v1, v0

    goto/16 :goto_e8

    :cond_7e
    const/4 v14, -0x2

    if-ne v13, v14, :cond_84

    .line 676
    :try_start_7a
    invoke-virtual {v15}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v14

    const/4 v9, -0x5

    if-ne v10, v9, :cond_83

    if-eqz v14, :cond_83

    .line 678
    iget-object v9, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_45
    .catchall {:try_start_7a .. :try_end_7a} :catchall_4a

    move/from16 v96, v5

    const/4 v5, 0x0

    :try_start_7b
    invoke-virtual {v9, v14, v5}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v9
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_44
    .catchall {:try_start_7b .. :try_end_7b} :catchall_4a

    move-object/from16 v5, v106

    .line 679
    :try_start_7c
    invoke-virtual {v14, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_82

    invoke-virtual {v14, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v78, v5

    const/4 v5, 0x1

    if-ne v10, v5, :cond_81

    move-object/from16 v5, v105

    .line 680
    invoke-virtual {v14, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v10
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_43
    .catchall {:try_start_7c .. :try_end_7c} :catchall_49

    move/from16 v27, v9

    move-object/from16 v9, v104

    .line 681
    :try_start_7d
    invoke-virtual {v14, v9}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v14

    if-nez v10, :cond_7f

    const/4 v10, 0x0

    goto :goto_d5

    .line 682
    :cond_7f
    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    :goto_d5
    if-nez v14, :cond_80

    const/4 v14, 0x0

    goto :goto_d6

    :cond_80
    invoke-virtual {v14}, Ljava/nio/Buffer;->limit()I

    move-result v14
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_42
    .catchall {:try_start_7d .. :try_end_7d} :catchall_48

    :goto_d6
    add-int v35, v10, v14

    :goto_d7
    move/from16 v10, v27

    goto/16 :goto_dc

    :catchall_48
    move-exception v0

    :goto_d8
    move-object/from16 v28, v1

    move-object v1, v3

    move-object/from16 v66, v4

    move v14, v8

    move-object/from16 v100, v15

    move/from16 v15, v19

    move/from16 v3, v27

    goto/16 :goto_c2

    :catch_42
    move-exception v0

    :goto_d9
    move-object/from16 v28, v1

    move-object/from16 v100, v15

    move/from16 v15, v19

    move/from16 v10, v27

    move/from16 v27, v8

    goto/16 :goto_a7

    :catchall_49
    move-exception v0

    move/from16 v27, v9

    goto :goto_d8

    :catch_43
    move-exception v0

    move/from16 v27, v9

    goto :goto_d9

    :cond_81
    :goto_da
    move/from16 v27, v9

    move-object/from16 v9, v104

    move-object/from16 v5, v105

    goto :goto_d7

    :cond_82
    move-object/from16 v78, v5

    goto :goto_da

    :catchall_4a
    move-exception v0

    move-object/from16 v28, v1

    move-object v1, v3

    move-object/from16 v66, v4

    move v14, v8

    move v3, v10

    move-object/from16 v100, v15

    move/from16 v15, v19

    goto/16 :goto_c2

    :catch_44
    move-exception v0

    :goto_db
    move-object/from16 v28, v1

    move/from16 v27, v8

    move-object/from16 v100, v15

    goto/16 :goto_cd

    :catch_45
    move-exception v0

    move/from16 v96, v5

    goto :goto_db

    :cond_83
    move/from16 v96, v5

    move-object/from16 v9, v104

    move-object/from16 v5, v105

    move-object/from16 v78, v106

    :goto_dc
    move-object/from16 v28, v1

    move-wide/from16 v69, v6

    move/from16 v27, v8

    move-wide/from16 v43, v11

    move/from16 v8, v98

    move/from16 v12, v99

    goto/16 :goto_d3

    :cond_84
    move/from16 v96, v5

    move-object/from16 v9, v104

    move-object/from16 v5, v105

    move-object/from16 v78, v106

    if-ltz v13, :cond_aa

    .line 689
    :try_start_7e
    invoke-virtual {v15, v13}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_53
    .catchall {:try_start_7e .. :try_end_7e} :catchall_58

    if-eqz v14, :cond_a9

    move/from16 v27, v8

    .line 693
    :try_start_7f
    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_51
    .catchall {:try_start_7f .. :try_end_7f} :catchall_56

    move-object/from16 v28, v1

    const/4 v1, 0x1

    if-le v8, v1, :cond_8e

    .line 694
    :try_start_80
    iget v1, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_47
    .catchall {:try_start_80 .. :try_end_80} :catchall_4c

    and-int/lit8 v29, v1, 0x2

    if-nez v29, :cond_8a

    if-eqz v35, :cond_85

    and-int/lit8 v29, v1, 0x1

    if-eqz v29, :cond_85

    move/from16 v29, v1

    .line 696
    :try_start_81
    iget v1, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v1, v1, v35

    iput v1, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v8, v8, v35

    .line 697
    iput v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_e1

    :catchall_4b
    move-exception v0

    :goto_dd
    move-object v1, v3

    move-object/from16 v66, v4

    move v3, v10

    move-object/from16 v100, v15

    :goto_de
    move/from16 v15, v19

    move/from16 v14, v27

    goto/16 :goto_c2

    :catch_46
    move-exception v0

    :goto_df
    move-object v8, v4

    move-object/from16 v100, v15

    :goto_e0
    move/from16 v15, v19

    goto/16 :goto_a8

    :cond_85
    move/from16 v29, v1

    :goto_e1
    if-eqz v32, :cond_86

    and-int/lit8 v1, v29, 0x1

    if-eqz v1, :cond_86

    .line 700
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v1, v14, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const/16 v32, 0x0

    .line 703
    :cond_86
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    move-wide/from16 v43, v11

    const/4 v8, 0x1

    invoke-virtual {v1, v10, v14, v3, v8}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v11

    cmp-long v1, v11, v46

    if-eqz v1, :cond_88

    .line 705
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v1, :cond_88

    move-wide/from16 v69, v6

    .line 706
    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v71, v6, v69

    cmp-long v8, v71, v20

    if-lez v8, :cond_87

    sub-long v20, v6, v69

    :cond_87
    move-wide/from16 v6, v20

    long-to-float v8, v6

    div-float v8, v8, v50

    div-float v8, v8, v51

    .line 709
    invoke-interface {v1, v11, v12, v8}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_46
    .catchall {:try_start_81 .. :try_end_81} :catchall_4b

    move-wide/from16 v20, v6

    goto :goto_e2

    :cond_88
    move-wide/from16 v69, v6

    :cond_89
    :goto_e2
    move/from16 v8, v98

    move/from16 v12, v99

    const/4 v7, 0x3

    goto/16 :goto_e5

    :cond_8a
    move-wide/from16 v69, v6

    move-wide/from16 v43, v11

    const/4 v1, -0x5

    if-ne v10, v1, :cond_89

    .line 713
    :try_start_82
    new-array v1, v8, [B

    .line 714
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v6, v8

    invoke-virtual {v14, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 715
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v14, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 716
    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 719
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_47
    .catchall {:try_start_82 .. :try_end_82} :catchall_4c

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    :goto_e3
    const/4 v7, 0x3

    if-ltz v6, :cond_8c

    if-le v6, v7, :cond_8c

    .line 721
    :try_start_83
    aget-byte v11, v1, v6

    if-ne v11, v8, :cond_8b

    add-int/lit8 v8, v6, -0x1

    aget-byte v8, v1, v8

    if-nez v8, :cond_8b

    add-int/lit8 v8, v6, -0x2

    aget-byte v8, v1, v8

    if-nez v8, :cond_8b

    add-int/lit8 v8, v6, -0x3

    aget-byte v11, v1, v8

    if-nez v11, :cond_8b

    .line 722
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 723
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v11, v8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x0

    .line 724
    invoke-virtual {v6, v1, v12, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 725
    iget v14, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v14, v8

    invoke-virtual {v11, v1, v8, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_e4

    :cond_8b
    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x1

    goto :goto_e3

    :cond_8c
    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 733
    :goto_e4
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move/from16 v8, v98

    move/from16 v12, v99

    invoke-static {v1, v8, v12}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    if-eqz v6, :cond_8d

    if-eqz v11, :cond_8d

    .line 735
    invoke-virtual {v1, v5, v6}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 736
    invoke-virtual {v1, v9, v11}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 738
    :cond_8d
    iget-object v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    const/4 v11, 0x0

    invoke-virtual {v6, v1, v11}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v1
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_46
    .catchall {:try_start_83 .. :try_end_83} :catchall_4b

    move v10, v1

    goto :goto_e5

    :catchall_4c
    move-exception v0

    const/4 v7, 0x3

    goto/16 :goto_dd

    :catch_47
    move-exception v0

    const/4 v7, 0x3

    goto/16 :goto_df

    :cond_8e
    move-wide/from16 v69, v6

    move-wide/from16 v43, v11

    goto/16 :goto_e2

    .line 741
    :goto_e5
    :try_start_84
    iget v1, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8f

    const/4 v1, 0x1

    :goto_e6
    const/4 v11, 0x0

    goto :goto_e7

    :cond_8f
    const/4 v1, 0x0

    goto :goto_e6

    .line 742
    :goto_e7
    invoke-virtual {v15, v13, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v33, v1

    goto/16 :goto_d4

    :goto_e8
    if-eq v13, v14, :cond_90

    move v0, v1

    move-object/from16 v105, v5

    move/from16 v98, v8

    move-object/from16 v104, v9

    move/from16 v99, v12

    move-object/from16 v100, v15

    move/from16 v9, v23

    move/from16 v14, v24

    move-object/from16 v13, v25

    move/from16 v15, v26

    move/from16 v8, v27

    move-object/from16 v1, v28

    move-wide/from16 v11, v43

    move-wide/from16 v6, v69

    :goto_e9
    move-object/from16 v106, v78

    move/from16 v5, v96

    goto/16 :goto_cf

    :cond_90
    if-nez v34, :cond_a7

    move/from16 v98, v8

    const-wide/16 v7, 0x9c4

    .line 749
    invoke-virtual {v4, v3, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_50
    .catchall {:try_start_84 .. :try_end_84} :catchall_55

    if-ne v0, v14, :cond_91

    move-object v8, v4

    move-object/from16 v77, v5

    move/from16 v99, v12

    move-object/from16 v100, v15

    move-object/from16 v13, v28

    move-wide/from16 v11, v43

    move-wide/from16 v14, v69

    const/16 v26, 0x0

    :goto_ea
    const/16 v49, -0x5

    move/from16 v28, v1

    :goto_eb
    move-object/from16 v1, v102

    goto/16 :goto_106

    :cond_91
    const/4 v6, -0x3

    if-ne v0, v6, :cond_93

    :cond_92
    :goto_ec
    move-object v8, v4

    move-object/from16 v77, v5

    move/from16 v99, v12

    move-object/from16 v100, v15

    move-object/from16 v13, v28

    move-wide/from16 v11, v43

    move-wide/from16 v14, v69

    goto :goto_ea

    :cond_93
    const/4 v6, -0x2

    if-ne v0, v6, :cond_94

    .line 755
    :try_start_85
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 756
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_92

    .line 757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newFormat = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_46
    .catchall {:try_start_85 .. :try_end_85} :catchall_4b

    goto :goto_ec

    :cond_94
    if-ltz v0, :cond_a6

    .line 763
    :try_start_86
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_95

    const/4 v6, 0x1

    goto :goto_ed

    :cond_95
    const/4 v6, 0x0

    .line 764
    :goto_ed
    iget-wide v7, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_50
    .catchall {:try_start_86 .. :try_end_86} :catchall_55

    cmp-long v11, v17, v46

    if-lez v11, :cond_96

    cmp-long v11, v7, v17

    if-ltz v11, :cond_96

    .line 769
    :try_start_87
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_46
    .catchall {:try_start_87 .. :try_end_87} :catchall_4b

    const/4 v6, 0x0

    const/16 v22, 0x1

    const/16 v34, 0x1

    :cond_96
    cmp-long v11, v40, v46

    if-ltz v11, :cond_99

    .line 772
    :try_start_88
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_99

    sub-long v71, v40, v69

    invoke-static/range {v71 .. v72}, Ljava/lang/Math;->abs(J)J

    move-result-wide v71

    const v11, 0xf4240

    div-int v11, v11, v89
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_4a
    .catchall {:try_start_88 .. :try_end_88} :catchall_50

    move-object/from16 v100, v15

    int-to-long v14, v11

    cmp-long v11, v71, v14

    if-lez v11, :cond_98

    cmp-long v6, v69, v46

    if-lez v6, :cond_97

    .line 774
    :try_start_89
    iget-object v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-wide/from16 v14, v69

    const/4 v11, 0x0

    invoke-virtual {v6, v14, v15, v11}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_48
    .catchall {:try_start_89 .. :try_end_89} :catchall_4d

    move-wide/from16 v69, v7

    const/4 v11, 0x0

    goto :goto_f0

    :catchall_4d
    move-exception v0

    move-object v1, v3

    move-object/from16 v66, v4

    :goto_ee
    move v3, v10

    goto/16 :goto_de

    :catch_48
    move-exception v0

    :goto_ef
    move-object v8, v4

    goto/16 :goto_e0

    :cond_97
    move-wide/from16 v14, v69

    .line 776
    :try_start_8a
    iget-object v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_49
    .catchall {:try_start_8a .. :try_end_8a} :catchall_4f

    move-wide/from16 v69, v7

    move-wide/from16 v7, v46

    const/4 v11, 0x0

    :try_start_8b
    invoke-virtual {v6, v7, v8, v11}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_f0
    add-long v30, v43, v56

    .line 784
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v49, -0x5

    and-int/lit8 v6, v6, -0x5

    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 785
    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_48
    .catchall {:try_start_8b .. :try_end_8b} :catchall_4e

    move v7, v11

    move/from16 v22, v7

    move/from16 v34, v22

    move-wide/from16 v17, v40

    move-wide/from16 v40, v62

    const/4 v6, 0x1

    :goto_f1
    const-wide/16 v46, 0x0

    goto :goto_f7

    :catchall_4e
    move-exception v0

    :goto_f2
    move-object v1, v3

    move-object/from16 v66, v4

    move v3, v10

    move/from16 v43, v11

    move/from16 v15, v19

    move/from16 v14, v27

    move/from16 v13, v54

    move-object/from16 v7, v86

    move/from16 v4, v89

    goto/16 :goto_128

    :catchall_4f
    move-exception v0

    :goto_f3
    const/4 v11, 0x0

    goto :goto_f2

    :catch_49
    move-exception v0

    :goto_f4
    const/4 v11, 0x0

    goto :goto_ef

    :cond_98
    :goto_f5
    move-wide/from16 v14, v69

    const/4 v11, 0x0

    const/16 v49, -0x5

    move-wide/from16 v69, v7

    goto :goto_f6

    :catchall_50
    move-exception v0

    move-object/from16 v100, v15

    goto :goto_f3

    :catch_4a
    move-exception v0

    move-object/from16 v100, v15

    goto :goto_f4

    :cond_99
    move-object/from16 v100, v15

    goto :goto_f5

    :goto_f6
    move v7, v6

    move v6, v11

    goto :goto_f1

    :goto_f7
    cmp-long v8, v66, v46

    if-lez v8, :cond_9b

    move/from16 v99, v12

    .line 788
    :try_start_8c
    iget-wide v11, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v11, v11, v66

    cmp-long v11, v11, v60

    if-gez v11, :cond_9a

    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_9a

    const/4 v7, 0x0

    :cond_9a
    :goto_f8
    const-wide/16 v46, 0x0

    goto :goto_f9

    :cond_9b
    move/from16 v99, v12

    goto :goto_f8

    :goto_f9
    cmp-long v11, v40, v46

    if-ltz v11, :cond_9c

    move-wide/from16 v12, v40

    goto :goto_fa

    :cond_9c
    move-wide v12, v14

    :goto_fa
    cmp-long v29, v12, v46

    if-lez v29, :cond_a0

    cmp-long v29, v64, v62

    if-nez v29, :cond_a0

    cmp-long v29, v69, v12

    if-gez v29, :cond_9e

    .line 795
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_9d

    .line 796
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drop frame startTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " present time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_9d
    const/4 v7, 0x0

    goto :goto_fb

    .line 799
    :cond_9e
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v64, -0x80000000

    cmp-long v8, v43, v64

    if-eqz v8, :cond_9f

    sub-long v30, v30, v12

    :cond_9f
    move-wide/from16 v64, v12

    :cond_a0
    :goto_fb
    if-eqz v6, :cond_a1

    move-wide/from16 v64, v62

    const-wide/16 v46, 0x0

    goto :goto_fc

    :cond_a1
    cmp-long v6, v40, v62

    const-wide/16 v46, 0x0

    if-nez v6, :cond_a2

    cmp-long v6, v30, v46

    if-eqz v6, :cond_a2

    .line 809
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long v12, v12, v30

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_48
    .catchall {:try_start_8c .. :try_end_8c} :catchall_4d

    .line 811
    :cond_a2
    :try_start_8d
    invoke-virtual {v4, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_fc
    if-eqz v7, :cond_a4

    .line 814
    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_4f
    .catchall {:try_start_8d .. :try_end_8d} :catchall_54

    if-ltz v11, :cond_a3

    move-wide/from16 v11, v43

    .line 816
    :try_start_8e
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_48
    .catchall {:try_start_8e .. :try_end_8e} :catchall_4d

    goto :goto_fd

    :cond_a3
    move-wide/from16 v11, v43

    .line 820
    :goto_fd
    :try_start_8f
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_4e
    .catchall {:try_start_8f .. :try_end_8f} :catchall_54

    move-object v8, v4

    move-object/from16 v77, v5

    .line 826
    :try_start_90
    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_4d
    .catchall {:try_start_90 .. :try_end_90} :catchall_53

    mul-long v4, v4, v52

    move-object/from16 v13, v28

    :try_start_91
    invoke-virtual {v13, v4, v5}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(J)V

    .line 827
    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_4c
    .catchall {:try_start_91 .. :try_end_91} :catchall_52

    mul-long v4, v4, v52

    move/from16 v28, v1

    move-object/from16 v1, v102

    :try_start_92
    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 828
    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    goto :goto_104

    :catchall_51
    move-exception v0

    move-object/from16 v102, v1

    :goto_fe
    move-object v1, v3

    move-object/from16 v66, v8

    move v3, v10

    move-object/from16 v28, v13

    goto/16 :goto_de

    :catch_4b
    move-exception v0

    move-object/from16 v102, v1

    :goto_ff
    move-object/from16 v28, v13

    goto/16 :goto_e0

    :catchall_52
    move-exception v0

    :goto_100
    move-object/from16 v1, v102

    goto :goto_fe

    :catch_4c
    move-exception v0

    :goto_101
    move-object/from16 v1, v102

    goto :goto_ff

    :catchall_53
    move-exception v0

    :goto_102
    move-object/from16 v13, v28

    move-object/from16 v1, v102

    move-object v1, v3

    move-object/from16 v66, v8

    goto/16 :goto_ee

    :catch_4d
    move-exception v0

    :goto_103
    move-object/from16 v13, v28

    move-object/from16 v1, v102

    goto/16 :goto_e0

    :catchall_54
    move-exception v0

    move-object v8, v4

    goto :goto_102

    :catch_4e
    move-exception v0

    move-object v8, v4

    move-object/from16 v77, v5

    move-object/from16 v13, v28

    move/from16 v28, v1

    move-object/from16 v1, v102

    .line 823
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_104
    move-wide/from16 v66, v6

    goto :goto_105

    :catch_4f
    move-exception v0

    move-object v8, v4

    goto :goto_103

    :cond_a4
    move-object v8, v4

    move-object/from16 v77, v5

    move-object/from16 v13, v28

    move-wide/from16 v11, v43

    move/from16 v28, v1

    move-object/from16 v1, v102

    .line 831
    :goto_105
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a8

    .line 833
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_a5

    .line 834
    const-string v0, "decoder stream end"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 836
    :cond_a5
    invoke-virtual/range {v100 .. v100}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/16 v26, 0x0

    goto :goto_106

    :catchall_55
    move-exception v0

    move-object v8, v4

    move-object/from16 v100, v15

    goto :goto_102

    :catch_50
    move-exception v0

    move-object v8, v4

    move-object/from16 v100, v15

    goto :goto_103

    :cond_a6
    move-object v8, v4

    move-object/from16 v100, v15

    move-object/from16 v13, v28

    move-object/from16 v1, v102

    .line 761
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_4b
    .catchall {:try_start_92 .. :try_end_92} :catchall_51

    :cond_a7
    move-object/from16 v77, v5

    move/from16 v98, v8

    move/from16 v99, v12

    move-object/from16 v100, v15

    move-object/from16 v13, v28

    move-wide/from16 v11, v43

    move-wide/from16 v14, v69

    const/16 v49, -0x5

    move/from16 v28, v1

    move-object v8, v4

    goto/16 :goto_eb

    :cond_a8
    :goto_106
    move-object/from16 v102, v1

    move-object v4, v8

    move-object/from16 v104, v9

    move-object v1, v13

    move-wide v6, v14

    move/from16 v9, v23

    move/from16 v14, v24

    move-object/from16 v13, v25

    move/from16 v15, v26

    move/from16 v8, v27

    move/from16 v0, v28

    move-object/from16 v105, v77

    goto/16 :goto_e9

    :catchall_56
    move-exception v0

    move-object v13, v1

    move-object v8, v4

    move-object/from16 v100, v15

    goto/16 :goto_100

    :catch_51
    move-exception v0

    move-object v13, v1

    move-object v8, v4

    move-object/from16 v100, v15

    goto/16 :goto_101

    :cond_a9
    move-object/from16 v28, v1

    move/from16 v27, v8

    move-object/from16 v100, v15

    move-object/from16 v1, v102

    move-object v8, v4

    move/from16 v4, v89

    .line 691
    :try_start_93
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoderOutputBuffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " was null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_57
    move-exception v0

    move-object/from16 v102, v1

    :goto_107
    move-object v1, v3

    move-object/from16 v66, v8

    move v3, v10

    move/from16 v15, v19

    move/from16 v14, v27

    :goto_108
    move/from16 v13, v54

    move-object/from16 v7, v86

    goto/16 :goto_ba

    :catch_52
    move-exception v0

    move-object/from16 v102, v1

    :goto_109
    move/from16 v15, v19

    goto/16 :goto_11a

    :catchall_58
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v27, v8

    move-object/from16 v100, v15

    :goto_10a
    move-object/from16 v1, v102

    move-object v8, v4

    move/from16 v4, v89

    goto :goto_107

    :catch_53
    move-exception v0

    move-object/from16 v28, v1

    :goto_10b
    move/from16 v27, v8

    move-object/from16 v100, v15

    :goto_10c
    move-object/from16 v1, v102

    move-object v8, v4

    move/from16 v4, v89

    goto :goto_109

    :cond_aa
    move-object/from16 v28, v1

    move/from16 v27, v8

    move-object/from16 v100, v15

    move-object/from16 v1, v102

    move-object v8, v4

    move/from16 v4, v89

    .line 686
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_52
    .catchall {:try_start_93 .. :try_end_93} :catchall_57

    :catch_54
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v96, v5

    goto :goto_10b

    :catchall_59
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v27, v8

    goto :goto_10a

    :catch_55
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v96, v5

    move/from16 v27, v8

    goto :goto_10c

    :catchall_5a
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v27, v8

    move/from16 v45, v10

    move-object/from16 v3, v95

    move-object/from16 v1, v102

    move-object v8, v4

    move/from16 v4, v89

    move-object v1, v3

    move-object/from16 v66, v8

    move/from16 v15, v19

    move/from16 v14, v27

    move/from16 v3, v45

    goto :goto_108

    :catch_56
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v37, v5

    move/from16 v27, v8

    move/from16 v45, v10

    move-object/from16 v3, v95

    goto :goto_10c

    :catchall_5b
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v27, v8

    :goto_10d
    move-object/from16 v3, v95

    move-object/from16 v1, v102

    const/16 v49, -0x5

    move-object v8, v4

    move/from16 v4, v89

    move-object v1, v3

    move-object/from16 v66, v8

    move/from16 v15, v19

    move/from16 v14, v27

    move/from16 v3, v49

    goto/16 :goto_108

    :catch_57
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v37, v5

    move/from16 v27, v8

    move-object/from16 v3, v95

    move-object/from16 v1, v102

    const/16 v49, -0x5

    move-object v8, v4

    move/from16 v4, v89

    move/from16 v15, v19

    move/from16 v10, v49

    goto/16 :goto_11a

    :catch_58
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v27, v8

    :goto_10e
    move-object/from16 v3, v95

    move-object/from16 v1, v102

    const/16 v49, -0x5

    move-object v8, v4

    move/from16 v4, v89

    move/from16 v15, v19

    move/from16 v10, v49

    goto/16 :goto_9e

    :catchall_5c
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v54, v7

    move/from16 v27, v8

    move-object/from16 v16, v11

    goto :goto_10d

    :catch_59
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v54, v7

    move/from16 v27, v8

    move-object/from16 v16, v11

    goto :goto_10e

    :catchall_5d
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v54, v7

    move/from16 v27, v8

    move-object/from16 v16, v22

    goto :goto_10d

    :catch_5a
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v54, v7

    move/from16 v27, v8

    move-object/from16 v16, v22

    goto :goto_10e

    :catchall_5e
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v54, v7

    move/from16 v27, v8

    move-object/from16 v16, v22

    move/from16 v4, v89

    move-object/from16 v3, v95

    move-object/from16 v1, v102

    const/16 v49, -0x5

    move-object v1, v3

    move/from16 v15, v19

    move/from16 v14, v27

    move/from16 v3, v49

    move/from16 v13, v54

    move-object/from16 v7, v86

    goto/16 :goto_16

    :catch_5b
    move-exception v0

    move-object/from16 v28, v1

    move/from16 v54, v7

    move/from16 v27, v8

    move-object/from16 v16, v22

    move/from16 v4, v89

    move-object/from16 v3, v95

    move-object/from16 v1, v102

    const/16 v49, -0x5

    move/from16 v15, v19

    move/from16 v10, v49

    const/4 v8, 0x0

    goto/16 :goto_9e

    :catchall_5f
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v54, v8

    move/from16 v27, v9

    move-object/from16 v16, v22

    move/from16 v4, v89

    move-object/from16 v3, v95

    move-object/from16 v1, v102

    const/16 v49, -0x5

    :goto_10f
    move-object v1, v3

    move/from16 v15, v19

    move/from16 v14, v27

    move/from16 v3, v49

    move/from16 v13, v54

    move-object/from16 v7, v86

    goto/16 :goto_52

    :catch_5c
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v54, v8

    move/from16 v27, v9

    move-object/from16 v16, v22

    move/from16 v4, v89

    move-object/from16 v3, v95

    move-object/from16 v1, v102

    const/16 v49, -0x5

    :goto_110
    move/from16 v15, v19

    move/from16 v10, v49

    const/4 v8, 0x0

    const/16 v28, 0x0

    goto/16 :goto_9e

    :catchall_60
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move-object v1, v14

    move/from16 v19, v16

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move-object/from16 v102, v1

    goto :goto_10f

    :catch_5d
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move-object v1, v14

    move/from16 v19, v16

    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move-object/from16 v102, v1

    goto :goto_110

    :catchall_61
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    :goto_111
    move/from16 v19, v16

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move-object v1, v3

    move/from16 v15, v19

    move/from16 v14, v27

    move/from16 v3, v49

    move/from16 v13, v54

    move-object/from16 v7, v86

    goto/16 :goto_56

    :catch_5e
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    :goto_112
    move/from16 v19, v16

    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move/from16 v15, v19

    move/from16 v10, v49

    const/4 v8, 0x0

    const/16 v28, 0x0

    :goto_113
    const/16 v37, 0x0

    goto/16 :goto_76

    :catchall_62
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move-object/from16 v42, v14

    goto :goto_111

    :catch_5f
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move-object/from16 v42, v14

    goto :goto_112

    :catchall_63
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move-object/from16 v42, v14

    move/from16 v19, v16

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move-object v1, v3

    move/from16 v15, v19

    move/from16 v14, v27

    move/from16 v3, v49

    move/from16 v13, v54

    move-object/from16 v7, v86

    goto/16 :goto_59

    :catch_60
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move-object/from16 v42, v14

    move/from16 v19, v16

    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move/from16 v15, v19

    move/from16 v10, v49

    const/4 v8, 0x0

    const/16 v28, 0x0

    const/16 v36, 0x0

    goto :goto_113

    :catchall_64
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move/from16 v19, v16

    :goto_114
    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move-object v1, v3

    move/from16 v15, v19

    move/from16 v14, v27

    move/from16 v3, v49

    move/from16 v13, v54

    move-object/from16 v7, v86

    goto/16 :goto_5b

    :catch_61
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v100, v6

    move v4, v7

    move/from16 v19, v16

    :goto_115
    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move/from16 v15, v19

    move/from16 v10, v49

    const/4 v8, 0x0

    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v42, 0x0

    goto/16 :goto_76

    :catchall_65
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v100, v6

    move v4, v7

    goto :goto_114

    :catch_62
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v100, v6

    move v4, v7

    goto :goto_115

    :catchall_66
    move-exception v0

    move/from16 v19, v3

    move v4, v7

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move-object v1, v3

    move/from16 v15, v19

    :goto_116
    move/from16 v14, v27

    move/from16 v3, v49

    move/from16 v13, v54

    move-object/from16 v7, v86

    goto/16 :goto_5

    :catch_63
    move-exception v0

    move/from16 v19, v3

    move v4, v7

    move/from16 v96, v20

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v27, v18

    move/from16 v15, v19

    :goto_117
    move/from16 v10, v49

    const/4 v8, 0x0

    goto/16 :goto_75

    :catchall_67
    move-exception v0

    move-object/from16 v16, v6

    move v4, v7

    move/from16 v27, v18

    move-object/from16 v3, v55

    const/16 v49, -0x5

    move-object v1, v3

    move/from16 v15, v17

    goto :goto_116

    :catch_64
    move-exception v0

    move/from16 v96, v3

    :goto_118
    move-object/from16 v16, v6

    move v4, v7

    move/from16 v27, v18

    :goto_119
    move-object/from16 v3, v55

    const/16 v49, -0x5

    move/from16 v15, v17

    goto :goto_117

    :catch_65
    move-exception v0

    move-object/from16 v16, v6

    move v4, v7

    move/from16 v27, v18

    move/from16 v96, v20

    goto :goto_119

    :catch_66
    move-exception v0

    move/from16 v96, v4

    goto :goto_118

    .line 846
    :goto_11a
    :try_start_94
    instance-of v1, v0, Ljava/lang/IllegalStateException;
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_6d

    if-eqz v1, :cond_ab

    if-nez p2, :cond_ab

    const/4 v12, 0x1

    goto :goto_11b

    :cond_ab
    const/4 v12, 0x0

    .line 849
    :goto_11b
    :try_start_95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitrate: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " framerate: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " size: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_6c

    move/from16 v9, v27

    :try_start_96
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_6b

    move-object/from16 v7, v86

    :try_start_97
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_6a

    move/from16 v5, v54

    :try_start_98
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 850
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_69

    move v1, v12

    move/from16 v19, v15

    const/4 v12, 0x1

    move-object v15, v8

    .line 854
    :goto_11c
    :try_start_99
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v6, v96

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v15, :cond_ac

    .line 856
    invoke-virtual {v15}, Landroid/media/MediaCodec;->stop()V

    .line 857
    invoke-virtual {v15}, Landroid/media/MediaCodec;->release()V
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_68

    goto :goto_11d

    :catchall_68
    move-exception v0

    move/from16 v43, v1

    move-object v1, v3

    move v13, v5

    move v14, v9

    move v3, v10

    move-object/from16 v66, v15

    move/from16 v15, v19

    goto/16 :goto_128

    :cond_ac
    :goto_11d
    move/from16 v49, v10

    move-object v6, v15

    move/from16 v17, v19

    move-object/from16 v15, v28

    move/from16 v108, v36

    goto :goto_120

    :catchall_69
    move-exception v0

    :goto_11e
    move-object v1, v3

    move v13, v5

    move-object/from16 v66, v8

    move v14, v9

    move v3, v10

    move/from16 v43, v12

    goto/16 :goto_128

    :catchall_6a
    move-exception v0

    move/from16 v5, v54

    goto :goto_11e

    :catchall_6b
    move-exception v0

    :goto_11f
    move/from16 v5, v54

    move-object/from16 v7, v86

    goto :goto_11e

    :catchall_6c
    move-exception v0

    move/from16 v9, v27

    goto :goto_11f

    :catchall_6d
    move-exception v0

    move/from16 v9, v27

    move/from16 v5, v54

    move-object/from16 v7, v86

    move-object v1, v3

    move v13, v5

    move-object/from16 v66, v8

    move v14, v9

    move v3, v10

    goto/16 :goto_ba

    :cond_ad
    move-object/from16 v16, v6

    move v4, v7

    move/from16 v9, v18

    move/from16 v5, v54

    move-object/from16 v3, v55

    move-object/from16 v7, v86

    const/16 v49, -0x5

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v37, 0x0

    const/16 v42, 0x0

    const/16 v100, 0x0

    const/16 v102, 0x0

    const/16 v108, 0x0

    :goto_120
    if-eqz v15, :cond_ae

    .line 861
    :try_start_9a
    invoke-virtual {v15}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/4 v15, 0x0

    goto :goto_122

    :catchall_6e
    move-exception v0

    move/from16 v43, v1

    move-object v1, v3

    move v13, v5

    move-object/from16 v66, v6

    move v14, v9

    move-object/from16 v28, v15

    move/from16 v15, v17

    :goto_121
    move/from16 v3, v49

    move/from16 v36, v108

    goto/16 :goto_128

    :cond_ae
    :goto_122
    if-eqz v102, :cond_af

    .line 865
    invoke-virtual/range {v102 .. v102}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/16 v102, 0x0

    :cond_af
    if-eqz v100, :cond_b0

    .line 869
    invoke-virtual/range {v100 .. v100}, Landroid/media/MediaCodec;->stop()V

    .line 870
    invoke-virtual/range {v100 .. v100}, Landroid/media/MediaCodec;->release()V
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_6e

    const/16 v48, 0x0

    goto :goto_123

    :cond_b0
    move-object/from16 v48, v100

    :goto_123
    if-eqz v37, :cond_b1

    .line 874
    :try_start_9b
    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    goto :goto_124

    :catchall_6f
    move-exception v0

    move/from16 v43, v1

    move-object v1, v3

    move v13, v5

    move-object/from16 v66, v6

    move v14, v9

    move-object/from16 v28, v15

    move/from16 v15, v17

    move-object/from16 v100, v48

    goto :goto_121

    .line 876
    :cond_b1
    :goto_124
    invoke-direct {v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_6f

    move v13, v5

    move v14, v9

    move-object/from16 v66, v15

    move-object/from16 v21, v42

    move-object/from16 v74, v48

    move/from16 v0, v49

    move-object/from16 v75, v102

    move-object v15, v6

    .line 891
    :goto_125
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v4, :cond_b2

    .line 892
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    .line 894
    :cond_b2
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    if-eqz v4, :cond_b3

    .line 896
    :try_start_9c
    invoke-virtual {v4}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->finishMovie()V

    .line 897
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v4, v0, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->getLastFrameTimestamp(ILandroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_70

    goto :goto_126

    :catchall_70
    move-exception v0

    .line 899
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b3
    :goto_126
    if-eqz v74, :cond_b4

    .line 904
    :try_start_9d
    invoke-virtual/range {v74 .. v74}, Landroid/media/MediaCodec;->release()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9d} :catch_67

    :catch_67
    :cond_b4
    if-eqz v15, :cond_b5

    .line 911
    :try_start_9e
    invoke-virtual {v15}, Landroid/media/MediaCodec;->release()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_9e} :catch_68

    :catch_68
    :cond_b5
    if-eqz v66, :cond_b6

    .line 918
    :try_start_9f
    invoke-virtual/range {v66 .. v66}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_9f} :catch_69

    :catch_69
    :cond_b6
    if-eqz v75, :cond_b7

    .line 925
    :try_start_a0
    invoke-virtual/range {v75 .. v75}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a0} :catch_6a

    :catch_6a
    :cond_b7
    move/from16 v15, v17

    move-object/from16 v0, v21

    goto/16 :goto_12a

    :catchall_71
    move-exception v0

    move v5, v2

    move-object v2, v3

    move v9, v14

    move/from16 v17, v19

    move-object/from16 v16, v27

    move-object/from16 v3, v55

    move/from16 v4, v68

    move/from16 v83, v69

    :goto_127
    const/16 v49, -0x5

    move-object v1, v3

    move v13, v5

    move/from16 v15, v17

    move/from16 v3, v49

    goto/16 :goto_5

    :catchall_72
    move-exception v0

    move-object v2, v1

    move v4, v7

    move v9, v14

    move-object v3, v15

    move/from16 v17, v19

    move/from16 v83, v36

    move-object/from16 v7, v42

    move/from16 v5, v54

    goto :goto_127

    :catchall_73
    move-exception v0

    move-object v2, v1

    move v4, v7

    move v5, v13

    move v9, v14

    move/from16 v17, v19

    move/from16 v83, v36

    move-object/from16 v7, v42

    const/16 v49, -0x5

    move/from16 v15, v17

    move/from16 v3, v49

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 888
    :goto_128
    :try_start_a1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitrate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " framerate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 889
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_75

    .line 891
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_b8

    .line 892
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 894
    :cond_b8
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    if-eqz v0, :cond_b9

    .line 896
    :try_start_a2
    invoke-virtual {v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->finishMovie()V

    .line 897
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->getLastFrameTimestamp(ILandroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_74

    goto :goto_129

    :catchall_74
    move-exception v0

    .line 899
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b9
    :goto_129
    if-eqz v100, :cond_ba

    .line 904
    :try_start_a3
    invoke-virtual/range {v100 .. v100}, Landroid/media/MediaCodec;->release()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a3} :catch_6b

    :catch_6b
    :cond_ba
    if-eqz v66, :cond_bb

    .line 911
    :try_start_a4
    invoke-virtual/range {v66 .. v66}, Landroid/media/MediaCodec;->release()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a4} :catch_6c

    :catch_6c
    :cond_bb
    if-eqz v28, :cond_bc

    .line 918
    :try_start_a5
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a5} :catch_6d

    :catch_6d
    :cond_bc
    if-eqz v102, :cond_bd

    .line 925
    :try_start_a6
    invoke-virtual/range {v102 .. v102}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a6} :catch_6e

    :catch_6e
    :cond_bd
    move/from16 v108, v36

    move-object/from16 v0, v42

    move/from16 v1, v43

    const/4 v12, 0x1

    :goto_12a
    if-eqz v1, :cond_be

    move/from16 v1, p3

    const/4 v10, 0x1

    add-int/lit8 v0, v1, 0x1

    move-object/from16 v3, p1

    .line 933
    invoke-direct {v2, v3, v10, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result v0

    return v0

    :cond_be
    move-object/from16 v3, p1

    move/from16 v1, p3

    const/4 v10, 0x1

    if-eqz v12, :cond_bf

    if-eqz v108, :cond_bf

    const/4 v7, 0x3

    if-ge v1, v7, :cond_bf

    add-int/lit8 v0, v1, 0x1

    move/from16 v15, p2

    .line 937
    invoke-direct {v2, v3, v15, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result v0

    return v0

    .line 940
    :cond_bf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v38

    .line 941
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_c0

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compression completed time="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " needCompress="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v83

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bitrate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " encoder_name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_c0
    return v12

    :catchall_75
    move-exception v0

    move-object v4, v0

    .line 891
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_c1

    .line 892
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 894
    :cond_c1
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    if-eqz v0, :cond_c2

    .line 896
    :try_start_a7
    invoke-virtual {v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->finishMovie()V

    .line 897
    iget-object v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->getLastFrameTimestamp(ILandroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_76

    goto :goto_12b

    :catchall_76
    move-exception v0

    .line 899
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c2
    :goto_12b
    if-eqz v100, :cond_c3

    .line 904
    :try_start_a8
    invoke-virtual/range {v100 .. v100}, Landroid/media/MediaCodec;->release()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a8} :catch_6f

    :catch_6f
    :cond_c3
    if-eqz v66, :cond_c4

    .line 911
    :try_start_a9
    invoke-virtual/range {v66 .. v66}, Landroid/media/MediaCodec;->release()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_a9} :catch_70

    :catch_70
    :cond_c4
    if-eqz v28, :cond_c5

    .line 918
    :try_start_aa
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_aa} :catch_71

    :catch_71
    :cond_c5
    if-eqz v102, :cond_c6

    .line 925
    :try_start_ab
    invoke-virtual/range {v102 .. v102}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ab} :catch_72

    .line 930
    :catch_72
    :cond_c6
    throw v4
.end method

.method private createEncoderForMimeType()Landroid/media/MediaCodec;
    .locals 4

    .line 975
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "video/avc"

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 976
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->findGoodHevcEncoder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 981
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 984
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 1008
    iget-object v3, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1009
    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 1010
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static createFragmentShader(IIIIZI)Ljava/lang/String;
    .locals 3

    .line 1303
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1305
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAverage()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1308
    :cond_0
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    dest size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   kernelRadius "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1310
    const-string p2, ".0;\nconst float pixelSizeY = 1.0 / "

    const-string p3, ".0;\nconst float pixelSizeX = 1.0 / "

    if-eqz p4, :cond_1

    .line 1311
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1330
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform sampler2D sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    .line 1017
    const-string v0, "video/hevc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 1020
    :goto_0
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 1021
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1022
    new-array v1, v2, [B

    .line 1023
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    move v2, p1

    :goto_1
    const/16 v3, 0x60

    if-ge p1, v3, :cond_2

    .line 1026
    aget-byte v3, v1, p1

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v1, v3

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, v1, v3

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v1, v3

    if-ne v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-le v2, p0, :cond_1

    .line 1029
    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1030
    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr p0, p1

    iput p0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getDecoderByFormat(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 4

    if-eqz p1, :cond_3

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1365
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    const-string v3, "video/dolby-vision"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1367
    const-string v2, "video/hevc"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    const-string v2, "video/avc"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    .line 1371
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 1373
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1374
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 1382
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1361
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getDecoderByFormat: format is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_1

    .line 1274
    invoke-virtual {p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 1275
    sget p0, Lorg/telegram/messenger/R$raw;->hdr2sdr_hlg:I

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1277
    :cond_0
    sget p0, Lorg/telegram/messenger/R$raw;->hdr2sdr_pq:I

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p0

    .line 1279
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "$dstWidth"

    invoke-virtual {p0, p4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "$dstHeight"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = TEX(vTextureCoord);\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1288
    :cond_1
    const-string p0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    return-object p0
.end method

.method private isMediatekAvcEncoder(Landroid/media/MediaCodec;)Z
    .locals 1

    .line 1039
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "c2.mtk.avc.encoder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    .locals 28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const/4 v6, 0x0

    .line 1113
    invoke-static {v1, v6}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    .line 1114
    invoke-static {v1, v9}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v0

    move v10, v0

    :goto_0
    move-wide/from16 v11, p8

    goto :goto_1

    :cond_0
    const/4 v10, -0x1

    goto :goto_0

    :goto_1
    long-to-float v0, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float v12, v0, v11

    .line 1123
    const-string v13, "max-input-size"

    const-wide/16 v14, 0x0

    if-ltz v7, :cond_2

    .line 1124
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1125
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 1126
    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v16

    .line 1128
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1130
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v6

    :goto_2
    cmp-long v17, v4, v14

    if-lez v17, :cond_1

    .line 1134
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_3

    .line 1136
    :cond_1
    invoke-virtual {v1, v14, v15, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_3
    move/from16 p8, v11

    move v11, v0

    goto :goto_4

    :cond_2
    move/from16 p8, v11

    const/16 v16, -0x1

    move v11, v6

    :goto_4
    if-ltz v10, :cond_5

    .line 1140
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1141
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 1143
    const-string v8, "mime"

    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v17, v14

    const-string v14, "audio/unknown"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, -0x1

    const/4 v10, -0x1

    goto :goto_6

    .line 1146
    :cond_3
    invoke-virtual {v2, v0, v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v8

    .line 1148
    :try_start_1
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 1150
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    cmp-long v0, v4, v17

    if-lez v0, :cond_4

    .line 1153
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_6

    :cond_4
    move-wide/from16 v13, v17

    .line 1155
    invoke-virtual {v1, v13, v14, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_6

    :cond_5
    const/4 v8, -0x1

    :goto_6
    if-gtz v11, :cond_6

    const/high16 v11, 0x10000

    .line 1162
    :cond_6
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v13, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_7

    :cond_7
    return-wide v13

    .line 1165
    :cond_8
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move v15, v6

    move-wide/from16 v21, v13

    const-wide/16 v19, 0x0

    :goto_8
    if-nez v15, :cond_1f

    .line 1167
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move-wide/from16 v23, v13

    .line 1170
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_9

    .line 1171
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v13

    move/from16 p9, v10

    int-to-long v9, v11

    cmp-long v9, v13, v9

    if-lez v9, :cond_a

    const-wide/16 v9, 0x400

    add-long/2addr v13, v9

    long-to-int v0, v13

    .line 1174
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v11, v0

    move-object v0, v9

    goto :goto_9

    :cond_9
    move/from16 p9, v10

    .line 1177
    :cond_a
    :goto_9
    invoke-virtual {v1, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9

    iput v9, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1178
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v9

    if-ne v9, v7, :cond_b

    move/from16 v10, p9

    move/from16 v13, v16

    :goto_a
    const/4 v14, -0x1

    goto :goto_b

    :cond_b
    move/from16 v10, p9

    if-ne v9, v10, :cond_c

    move v13, v8

    goto :goto_a

    :cond_c
    const/4 v13, -0x1

    goto :goto_a

    :goto_b
    if-eq v13, v14, :cond_1c

    if-eq v9, v10, :cond_12

    .line 1188
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    if-eqz v14, :cond_12

    .line 1190
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    .line 1191
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v26

    add-int v26, v25, v26

    move/from16 v4, v25

    const/4 v6, -0x1

    :goto_c
    const/16 p9, 0x4

    add-int/lit8 v5, v26, -0x4

    if-gt v4, v5, :cond_12

    .line 1194
    aget-byte v25, v14, v4

    if-nez v25, :cond_e

    add-int/lit8 v25, v4, 0x1

    aget-byte v25, v14, v25

    if-nez v25, :cond_e

    add-int/lit8 v25, v4, 0x2

    aget-byte v25, v14, v25

    if-nez v25, :cond_e

    add-int/lit8 v25, v4, 0x3

    move/from16 p11, v8

    aget-byte v8, v14, v25

    move/from16 v25, v11

    const/4 v11, 0x1

    if-eq v8, v11, :cond_d

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v8, -0x1

    goto :goto_f

    :cond_e
    move/from16 p11, v8

    move/from16 v25, v11

    const/4 v11, 0x1

    :goto_e
    if-ne v4, v5, :cond_11

    goto :goto_d

    :goto_f
    if-eq v6, v8, :cond_10

    sub-int v8, v4, v6

    if-eq v4, v5, :cond_f

    move/from16 v5, p9

    goto :goto_10

    :cond_f
    const/4 v5, 0x0

    :goto_10
    sub-int/2addr v8, v5

    shr-int/lit8 v5, v8, 0x18

    int-to-byte v5, v5

    .line 1197
    aput-byte v5, v14, v6

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v11, v8, 0x10

    int-to-byte v11, v11

    .line 1198
    aput-byte v11, v14, v5

    add-int/lit8 v5, v6, 0x2

    shr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    .line 1199
    aput-byte v11, v14, v5

    add-int/lit8 v6, v6, 0x3

    int-to-byte v5, v8

    .line 1200
    aput-byte v5, v14, v6

    :cond_10
    move v6, v4

    :cond_11
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, p11

    move/from16 v11, v25

    goto :goto_c

    :cond_12
    move/from16 p11, v8

    move/from16 v25, v11

    .line 1209
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v4, :cond_13

    .line 1210
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v4, 0x0

    goto :goto_11

    :cond_13
    const/4 v4, 0x0

    .line 1212
    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x1

    .line 1216
    :goto_11
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_17

    if-nez v4, :cond_17

    const-wide/16 v17, 0x0

    if-ne v9, v7, :cond_14

    cmp-long v5, p4, v17

    if-lez v5, :cond_14

    cmp-long v5, v21, v23

    if-nez v5, :cond_14

    .line 1218
    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v21, v5

    :cond_14
    cmp-long v5, p6, v17

    if-ltz v5, :cond_15

    .line 1220
    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v5, p6

    if-gez v5, :cond_16

    :cond_15
    const/4 v5, 0x0

    goto :goto_12

    :cond_16
    const/4 v4, 0x1

    :cond_17
    const-wide/16 v17, 0x0

    :cond_18
    move-object/from16 v6, p0

    goto :goto_13

    .line 1221
    :goto_12
    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1222
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1223
    invoke-virtual {v2, v13, v0, v3, v5}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v8

    const-wide/16 v17, 0x0

    cmp-long v6, v8, v17

    if-eqz v6, :cond_18

    move-object/from16 v6, p0

    .line 1225
    iget-object v11, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v11, :cond_1a

    .line 1226
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v26, v13, v21

    cmp-long v26, v26, v19

    if-lez v26, :cond_19

    sub-long v19, v13, v21

    :cond_19
    move-wide/from16 v13, v19

    long-to-float v5, v13

    div-float v5, v5, p8

    div-float/2addr v5, v12

    .line 1229
    invoke-interface {v11, v8, v9, v5}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v19, v13

    :cond_1a
    :goto_13
    if-nez v4, :cond_1b

    .line 1237
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1b
    const/4 v8, -0x1

    goto :goto_14

    :cond_1c
    move-object/from16 v6, p0

    move/from16 p11, v8

    move/from16 v25, v11

    move v8, v14

    const-wide/16 v17, 0x0

    if-ne v9, v8, :cond_1d

    const/4 v4, 0x1

    goto :goto_14

    .line 1242
    :cond_1d
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v4, 0x0

    :goto_14
    if-eqz v4, :cond_1e

    const/4 v15, 0x1

    :cond_1e
    move-wide/from16 v4, p4

    move/from16 v8, p11

    move-wide/from16 v13, v23

    move/from16 v11, v25

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v6, p0

    if-ltz v7, :cond_20

    .line 1249
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_20
    if-ltz v10, :cond_21

    .line 1252
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_21
    return-wide v21
.end method


# virtual methods
.method public convertVideo(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)Z
    .locals 2

    .line 54
    iget-boolean v0, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSticker:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1, v1}, Lorg/telegram/messenger/video/WebmEncoder;->convert(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;I)Z

    move-result p1

    return p1

    .line 57
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    iput-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    .line 58
    invoke-direct {p0, p1, v1, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result p1

    return p1
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    return-wide v0
.end method
