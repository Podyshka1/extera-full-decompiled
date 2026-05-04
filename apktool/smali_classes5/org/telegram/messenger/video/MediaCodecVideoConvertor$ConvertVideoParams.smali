.class public Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/MediaCodecVideoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertVideoParams"
.end annotation


# instance fields
.field account:I

.field avatarStartTime:J

.field backgroundPath:Ljava/lang/String;

.field bitrate:I

.field blurPath:Ljava/lang/String;

.field cacheFile:Ljava/io/File;

.field callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

.field collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field collageParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$Part;",
            ">;"
        }
    .end annotation
.end field

.field cropState:Lorg/telegram/messenger/MediaController$CropState;

.field duration:J

.field endTime:J

.field framerate:I

.field gradientBottomColor:Ljava/lang/Integer;

.field gradientTopColor:Ljava/lang/Integer;

.field hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

.field isDark:Z

.field isPhoto:Z

.field isRound:Z

.field isSecret:Z

.field isSticker:Z

.field isStory:Z

.field mediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field messagePath:Ljava/lang/String;

.field messageVideoMaskPath:Ljava/lang/String;

.field muted:Z

.field needCompress:Z

.field originalBitrate:I

.field originalHeight:I

.field originalWidth:I

.field paintPath:Ljava/lang/String;

.field resultHeight:I

.field resultWidth:I

.field rotationValue:I

.field savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public soundInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field startTime:J

.field videoPath:Ljava/lang/String;

.field volume:F

.field wallpaperPeerId:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJZJLorg/telegram/messenger/MediaController$VideoConvertorListener;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;
    .locals 2

    move-object/from16 v0, p21

    .line 1438
    new-instance v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;

    invoke-direct {v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;-><init>()V

    .line 1439
    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->videoPath:Ljava/lang/String;

    .line 1440
    iput-object p1, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cacheFile:Ljava/io/File;

    .line 1441
    iput p2, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->rotationValue:I

    .line 1442
    iput-boolean p3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSecret:Z

    .line 1443
    iput p4, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalWidth:I

    .line 1444
    iput p5, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalHeight:I

    .line 1445
    iput p6, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultWidth:I

    .line 1446
    iput p7, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultHeight:I

    .line 1447
    iput p8, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->framerate:I

    .line 1448
    iput p9, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->bitrate:I

    .line 1449
    iput p10, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalBitrate:I

    .line 1450
    iput-wide p11, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->startTime:J

    move-wide p0, p13

    .line 1451
    iput-wide p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->endTime:J

    move-wide/from16 p0, p15

    .line 1452
    iput-wide p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->avatarStartTime:J

    move/from16 p0, p17

    .line 1453
    iput-boolean p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->needCompress:Z

    move-wide/from16 p0, p18

    .line 1454
    iput-wide p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->duration:J

    .line 1455
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 1456
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->paintPath:Ljava/lang/String;

    .line 1457
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->blurPath:Ljava/lang/String;

    .line 1458
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->mediaEntities:Ljava/util/ArrayList;

    .line 1459
    iget-boolean p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    iput-boolean p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isPhoto:Z

    .line 1460
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 1461
    iget-boolean p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    iput-boolean p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isRound:Z

    move-object/from16 p0, p20

    .line 1462
    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    .line 1463
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->gradientTopColor:Ljava/lang/Integer;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientTopColor:Ljava/lang/Integer;

    .line 1464
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->gradientBottomColor:Ljava/lang/Integer;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientBottomColor:Ljava/lang/Integer;

    .line 1465
    iget-boolean p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    iput-boolean p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->muted:Z

    .line 1466
    iget p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->volume:F

    iput p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->volume:F

    .line 1467
    iget-boolean p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    iput-boolean p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isStory:Z

    .line 1468
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 1469
    iget-boolean p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->isDark:Z

    iput-boolean p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isDark:Z

    .line 1470
    iget-wide p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->wallpaperPeerId:J

    iput-wide p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->wallpaperPeerId:J

    .line 1471
    iget p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->account:I

    iput p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->account:I

    .line 1472
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->messagePath:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->messagePath:Ljava/lang/String;

    .line 1473
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->messageVideoMaskPath:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->messageVideoMaskPath:Ljava/lang/String;

    .line 1474
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->backgroundPath:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->backgroundPath:Ljava/lang/String;

    .line 1475
    iget-boolean p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->isSticker:Z

    iput-boolean p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSticker:Z

    .line 1476
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    .line 1477
    iget-object p0, v0, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    iput-object p0, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->collageParts:Ljava/util/ArrayList;

    return-object v1
.end method
