.class public Lorg/telegram/messenger/MediaController$MediaEditState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaEditState"
.end annotation


# instance fields
.field public averageDuration:J

.field public caption:Ljava/lang/CharSequence;

.field public coverPath:Ljava/lang/String;

.field public coverPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

.field public coverPhotoParentObject:Ljava/lang/Object;

.field public coverSavedPosition:J

.field public cropState:Lorg/telegram/messenger/MediaController$CropState;

.field public croppedMediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public croppedPaintPath:Ljava/lang/String;

.field public editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field public effectId:J

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public filterPath:Ljava/lang/String;

.field public fullPaintPath:Ljava/lang/String;

.field public highQuality:Z

.field public imagePath:Ljava/lang/String;

.field public isCropped:Z

.field public isFiltered:Z

.field public isPainted:Z

.field public mediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public paintPath:Ljava/lang/String;

.field public savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public thumbPath:Ljava/lang/String;

.field public ttl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V
    .locals 2

    .line 548
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    .line 550
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 551
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    .line 552
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    .line 553
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    .line 554
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    .line 555
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->fullPaintPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->fullPaintPath:Ljava/lang/String;

    .line 557
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    .line 558
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 559
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->mediaEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->mediaEntities:Ljava/util/ArrayList;

    .line 560
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedMediaEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedMediaEntities:Ljava/util/ArrayList;

    .line 561
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    .line 562
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 563
    iget-wide v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->averageDuration:J

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->averageDuration:J

    .line 564
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    .line 565
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isPainted:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isPainted:Z

    .line 566
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isCropped:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isCropped:Z

    .line 567
    iget v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    .line 569
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 570
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    .line 571
    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    .line 508
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 510
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPhotoParentObject:Ljava/lang/Object;

    .line 511
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 512
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    .line 513
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    .line 514
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    .line 515
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->fullPaintPath:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 517
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    .line 518
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isPainted:Z

    .line 519
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isCropped:Z

    .line 520
    iput v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    .line 521
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->mediaEntities:Ljava/util/ArrayList;

    .line 522
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 523
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    .line 524
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 525
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    .line 526
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 527
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    return-void
.end method

.method public resetEdit()V
    .locals 2

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 532
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    .line 533
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    .line 534
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    .line 535
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 536
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    .line 537
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isPainted:Z

    .line 538
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->isCropped:Z

    .line 539
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->mediaEntities:Ljava/util/ArrayList;

    .line 540
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 541
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    .line 542
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 543
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    .line 544
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    return-void
.end method
