.class public Lorg/telegram/ui/Stories/recorder/StoryEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;,
        Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;
    }
.end annotation


# instance fields
.field public albums:Ljava/util/HashSet;

.field public allowScreenshots:Z

.field public audioAuthor:Ljava/lang/String;

.field public audioDuration:J

.field public audioLeft:F

.field public audioOffset:J

.field public audioPath:Ljava/lang/String;

.field public audioRight:F

.field public audioTitle:Ljava/lang/String;

.field public audioVolume:F

.field public averageDuration:J

.field public backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public backgroundFile:Ljava/io/File;

.field public backgroundWallpaperEmoticon:Ljava/lang/String;

.field public backgroundWallpaperPeerId:J

.field public blurredVideoThumb:Landroid/graphics/Bitmap;

.field public botId:J

.field public botLang:Ljava/lang/String;

.field public caption:Ljava/lang/CharSequence;

.field public captionEntitiesAllowed:Z

.field private checkStickersReqId:I

.field public collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field public collageContent:Ljava/util/ArrayList;

.field public cover:J

.field public coverBitmap:Landroid/graphics/Bitmap;

.field public coverSet:Z

.field public crop:Lorg/telegram/messenger/MediaController$CropState;

.field public final currentAccount:I

.field public draftDate:J

.field public draftId:J

.field public draftThumbFile:Ljava/io/File;

.field public duration:J

.field public editDocumentId:J

.field public editExpireDate:J

.field public editPhotoId:J

.field public editStickers:Ljava/util/List;

.field public editStoryId:I

.field public editStoryPeerId:J

.field public editedCaption:Z

.field public editedMedia:Z

.field public editedMediaAreas:Ljava/util/ArrayList;

.field public editedPrivacy:Z

.field public editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field public error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public file:Ljava/io/File;

.field public fileDeletable:Z

.field public fileDuration:D

.field public filterFile:Ljava/io/File;

.field public filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field private fromCamera:Z

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

.field public height:I

.field public invert:I

.field public isDark:Z

.field public isDraft:Z

.field public isEdit:Z

.field public isEditSaved:Z

.field public isEditingCover:Z

.field public isError:Z

.field public isRepost:Z

.field public isRepostMessage:Z

.field public isShare:Z

.field public isVideo:Z

.field public left:F

.field public final matrix:Landroid/graphics/Matrix;

.field public mediaEntities:Ljava/util/ArrayList;

.field public messageFile:Ljava/io/File;

.field public messageObjects:Ljava/util/ArrayList;

.field public messageVideoMaskFile:Ljava/io/File;

.field public muted:Z

.field public orientation:I

.field public paintBlurFile:Ljava/io/File;

.field public paintEntitiesFile:Ljava/io/File;

.field public paintFile:Ljava/io/File;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public period:I

.field public pinned:Z

.field public privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

.field public final privacyRules:Ljava/util/ArrayList;

.field public repostCaption:Ljava/lang/String;

.field public repostMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public repostPeerName:Ljava/lang/CharSequence;

.field public repostStoryId:I

.field public resultHeight:I

.field public resultWidth:I

.field public right:F

.field public round:Ljava/io/File;

.field public roundDuration:J

.field public roundLeft:F

.field public roundOffset:J

.field public roundRight:F

.field public roundThumb:Ljava/lang/String;

.field public roundVolume:F

.field public scheduleDate:I

.field public shareUserIds:Ljava/util/ArrayList;

.field public silent:Z

.field public stickers:Ljava/util/List;

.field public thumbBitmap:Landroid/graphics/Bitmap;

.field public thumbPath:Ljava/lang/String;

.field public thumbPathBitmap:Landroid/graphics/Bitmap;

.field public updateDocumentRef:Lorg/telegram/messenger/Utilities$Callback;

.field public uploadThumbFile:Ljava/io/File;

.field public videoLeft:F

.field public videoLoop:Z

.field public videoOffset:J

.field public videoRight:F

.field public videoVolume:F

.field public width:I


# direct methods
.method public static synthetic $r8$lambda$0lHsDlpwasNzfg6zwoDwh3qpVos(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$detectHDR$12(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1OOyTYUgvqNne_axFzTZTiCLD_E(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 370
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Df5nUUKU459Irbgo7aRJ8MjlGSQ(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$detectHDR$13(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EQIL8HLkR5Ib2V8_VJ65WfcrGeA(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EUeGHoSOs8zXahaxowCLuq3i09o(Ljava/lang/String;[[ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1434
    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    .line 1435
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H6dmbGYF3l9IaDiz6ctKYYobTL8([Ljava/lang/String;[[ILjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    .line 1425
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1426
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 1427
    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1428
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Klgwcc8fQhmE5uS_lc9VVADBoYE(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$0(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SbUDXY5QNABAspZOaSY6ifNgL7U(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$4(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TfXWb30yaMwIV9-A0NVWEXA1big(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;[[ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$getVideoEditedInfo$9(Ljava/lang/String;[[ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bvswIjj-V3LLf8HgjteCCiB0704(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$14(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$edfXDqIw8U2HeVEu61pa8a3EWO4(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$setupGradient$7(Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jXSjE_J0ErOz3kbdSbCDtSQB3XU(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$updateFilter$6(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pQ596iYBXSzuhrUdQBpnfXGkQUI(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$setupGradient$8(Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pcM-EH4HZOE6SMaRISfD1iFMn8A(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$3(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qDr-FM-3QRDmUaVcieDPw5Jzl-Q(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 343
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qX16IuxE6lDY1hROj4iTNW2Xqh4(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$16(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r3Be54PZLVX-qXgE1zaOQQXUDFs(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$5(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 75
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    .line 98
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    .line 109
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    const/4 v1, 0x0

    .line 114
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLoop:Z

    const/4 v2, 0x0

    .line 115
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    .line 119
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    const-wide/16 v2, -0x1

    .line 124
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    const/16 v2, 0x2d0

    .line 130
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 v2, 0x500

    .line 131
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 136
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    .line 142
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    .line 143
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    .line 149
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 150
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    .line 159
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    const v0, 0x15180

    .line 162
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    const-wide/16 v2, 0x1388

    .line 181
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    .line 1608
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    return-void
.end method

.method public static asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 5

    .line 989
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 990
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    .line 991
    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    .line 992
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 993
    iget-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 994
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v3, 0x0

    .line 995
    iput v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    .line 996
    iget-wide v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v3, v3

    const v4, 0x47667800    # 59000.0f

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    goto :goto_0

    .line 999
    :cond_1
    iget-boolean p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x2d0

    .line 1000
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/16 p1, 0x500

    .line 1001
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 1002
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 1003
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    goto :goto_1

    :cond_2
    const/16 p0, 0x438

    .line 1005
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/16 p1, 0x780

    .line 1006
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 1007
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 1008
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 1010
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    .line 1169
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1170
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    float-to-double v2, v0

    .line 1173
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 1174
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 1175
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    int-to-double p0, p0

    .line 1177
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static canRepostMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 768
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 771
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v1, :cond_1

    return v0

    .line 774
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_8

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 777
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 778
    iget v3, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 779
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-eqz v4, :cond_3

    return v0

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-gez v1, :cond_5

    .line 782
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    .line 783
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v1, :cond_8

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v3, :cond_8

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 784
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    .line 785
    iget p0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    cmp-long v1, v6, v4

    if-gez v1, :cond_8

    if-eqz p0, :cond_6

    .line 786
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-nez v1, :cond_8

    :cond_6
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public static drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 250
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 251
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 252
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 253
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float p2, p2

    int-to-float v4, v4

    div-float/2addr p2, v4

    int-to-float p3, p3

    int-to-float v2, v2

    div-float/2addr p3, v2

    .line 254
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float/2addr v4, p2

    float-to-int p3, v4

    mul-float/2addr v2, p2

    float-to-int p2, v2

    .line 255
    invoke-virtual {p1, v3, v3, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 259
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 262
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private ext(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 551
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 553
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 554
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static fromMedia(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1030
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/ChatActivity;->createEntriesFromMedia(Ljava/util/ArrayList;ZLjava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1031
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1036
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p0

    return-object p0
.end method

.method public static fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 5

    .line 939
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 940
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 941
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    .line 942
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 943
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 944
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    .line 945
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const/4 v3, 0x0

    .line 946
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const v3, 0x47667800    # 59000.0f

    long-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 947
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 948
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vthumb://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    .line 951
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    .line 952
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 953
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    .line 954
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    if-lez v1, :cond_1

    iget p0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    if-lez p0, :cond_1

    .line 955
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 956
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 958
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    return-object v0
.end method

.method public static fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 2

    .line 1015
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 1016
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    const/4 v1, 0x1

    .line 1017
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    .line 1018
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    const/4 p1, 0x0

    .line 1019
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 1020
    iput-boolean p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_0

    .line 1022
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    .line 1024
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    return-object v0
.end method

.method public static fromStoryItem(Ljava/io/File;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 9

    .line 877
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    .line 878
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    .line 879
    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    .line 880
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    const/4 v2, 0x0

    .line 881
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    const/16 v3, 0x2d0

    .line 882
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/16 v3, 0x500

    .line 883
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 884
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_0

    .line 885
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_6

    .line 887
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 889
    :cond_0
    instance-of p0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz p0, :cond_6

    .line 890
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 891
    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    move p0, v2

    .line 892
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 893
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 894
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_1

    .line 895
    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 896
    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 897
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 902
    :cond_2
    :goto_1
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_6

    .line 903
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 904
    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    goto :goto_3

    .line 905
    :cond_3
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    .line 906
    :goto_2
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_6

    .line 907
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 908
    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_4

    .line 909
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 912
    :cond_4
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 913
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 914
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 921
    :cond_6
    :goto_3
    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 922
    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toInput(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 923
    iget p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    sub-int/2addr p0, v2

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 925
    :try_start_0
    new-instance p0, Landroid/text/SpannableString;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 926
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 927
    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 928
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v3, p0, v1}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object p0

    .line 929
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :catch_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    .line 932
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickers(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 933
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    .line 934
    iget p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object v0
.end method

.method public static fromVideoShoot(Ljava/io/File;Ljava/lang/String;J)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 2

    .line 1154
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    .line 1155
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    .line 1156
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 1157
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    const/4 p0, 0x0

    .line 1158
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    .line 1159
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 1160
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 1161
    iput-wide p2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    .line 1162
    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/4 p0, 0x0

    .line 1163
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const p0, 0x47686c00    # 59500.0f

    long-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1164
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    return-object v0
.end method

.method public static getCoverTime(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 1757
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 1760
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1761
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_2

    .line 1762
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    return-wide v0

    .line 1767
    :cond_4
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->video_start_ts:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    :cond_5
    :goto_2
    return-wide v0
.end method

.method public static getRepostDialogId(Lorg/telegram/messenger/MessageObject;)J
    .locals 2

    .line 817
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->useForwardForRepost(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 819
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    .line 822
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRepostMessageId(Lorg/telegram/messenger/MessageObject;)I
    .locals 1

    .line 827
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->useForwardForRepost(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 829
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    return p0

    .line 832
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    return p0
.end method

.method public static getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 487
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 488
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 489
    invoke-interface {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    .line 491
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 492
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 494
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 495
    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    sub-long/2addr v9, v11

    sub-long/2addr v7, v9

    .line 496
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v10, v6, v9

    int-to-long v10, v10

    const-wide/16 v12, 0x4

    mul-long/2addr v10, v12

    mul-int v14, v1, v2

    int-to-long v14, v14

    mul-long/2addr v14, v12

    add-long/2addr v10, v14

    long-to-double v10, v10

    const-wide v12, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v10, v12

    long-to-double v7, v7

    cmpg-double v7, v10, v7

    if-gtz v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    if-gt v6, v1, :cond_1

    if-gt v9, v2, :cond_1

    .line 499
    invoke-interface {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p4, :cond_2

    if-eqz v7, :cond_2

    .line 502
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v6

    if-lt v6, v4, :cond_2

    .line 503
    invoke-interface {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v1

    .line 505
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 506
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 510
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 512
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 513
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 515
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 516
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v0, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 517
    new-instance v11, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {v11, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 518
    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    .line 520
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v9, 0x8

    invoke-static {v0, v9, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    .line 522
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 523
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 524
    invoke-virtual {v8, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    int-to-float v9, v2

    int-to-float v10, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 525
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v4

    .line 533
    :cond_2
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 534
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 535
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 536
    invoke-interface {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 237
    const-string v0, "video/webm"

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "video/mp4"

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {p0, v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v2, 0x1

    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$buildBitmap$0(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$buildBitmap$3(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$buildBitmap$4(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$buildBitmap$5(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$checkStickers$14(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 1573
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    .line 1574
    instance-of v1, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v1, :cond_3

    .line 1575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    .line 1576
    check-cast p1, Lorg/telegram/tgnet/Vector;

    move v1, v0

    .line 1577
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1578
    iget-object v2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 1579
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_0

    .line 1580
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1581
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_0
    if-nez v3, :cond_1

    .line 1583
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v4, :cond_1

    .line 1584
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    .line 1585
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1586
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_1
    if-eqz v3, :cond_2

    .line 1590
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 1591
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1592
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1593
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 1594
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkStickers$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1572
    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkStickers$16(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p5, :cond_0

    .line 1600
    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1601
    iget p4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object p4

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    const/4 p2, 0x1

    aput-object p3, p5, p2

    invoke-virtual {p4, p1, p5}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 1604
    :cond_0
    invoke-interface {p3, p4, p5}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$detectHDR$12(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 1531
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$detectHDR$13(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    .line 1506
    const-string v0, "color-range"

    const-string v1, "color-standard"

    const-string v2, "color-transfer"

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    if-nez v3, :cond_0

    .line 1507
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 1508
    iput v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->maxlum:F

    const v4, 0x3a83126f    # 0.001f

    .line 1509
    iput v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->minlum:F

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 1513
    :cond_0
    :goto_0
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    .line 1514
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1515
    invoke-static {v4, v5}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v5

    .line 1516
    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1517
    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 1518
    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1519
    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    .line 1521
    :cond_1
    invoke-virtual {v4, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1522
    invoke-virtual {v4, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    .line 1524
    :cond_2
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1525
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 1531
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1528
    :goto_2
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1530
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 1531
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    .line 1530
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 1531
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1532
    throw v0
.end method

.method private synthetic lambda$getVideoEditedInfo$9(Ljava/lang/String;[[ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1247
    new-instance v2, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    const/4 v3, 0x1

    .line 1249
    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    .line 1250
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    iput-boolean v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    .line 1251
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 1252
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 1253
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1254
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1255
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    .line 1256
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->messagePath:Ljava/lang/String;

    .line 1257
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->messageVideoMaskPath:Ljava/lang/String;

    .line 1258
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->backgroundPath:Ljava/lang/String;

    .line 1261
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iget v7, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-static {v4, v6, v7, v3}, Lorg/telegram/messenger/MediaController;->extractRealEncoderBitrate(IIIZ)I

    move-result v4

    .line 1262
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v9, 0x4

    const-wide/16 v10, -0x1

    const/4 v12, -0x1

    const/4 v15, 0x0

    const-wide/16 v16, 0x3e8

    if-eqz v6, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1263
    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1264
    iput-boolean v15, v2, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    .line 1265
    aget-object v6, p2, v15

    const/16 v18, 0x7

    aget v6, v6, v18

    const/high16 v18, 0x41000000    # 8.0f

    const/16 v7, 0x3b

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 1266
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->getVideoBitrate(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v12, :cond_4

    .line 1267
    aget-object v1, p2, v15

    const/4 v6, 0x3

    aget v1, v1, v6

    :cond_4
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    const v6, 0xf4240

    if-ge v1, v6, :cond_5

    .line 1268
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x1e8480

    .line 1269
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1270
    iput v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    goto :goto_4

    .line 1271
    :cond_5
    iget v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    const v6, 0x7a120

    if-ge v1, v6, :cond_6

    const v1, 0x2625a0

    .line 1272
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1273
    iput v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    goto :goto_4

    :cond_6
    const v7, 0x2dc6c0

    .line 1275
    invoke-static {v1, v7, v6}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1277
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "story bitrate, original = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1278
    aget-object v1, p2, v15

    aget v6, v1, v9

    const/high16 v7, 0x447a0000    # 1000.0f

    int-to-long v8, v6

    iput-wide v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    mul-long v13, v8, v16

    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    .line 1279
    iget v12, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float v13, v8

    mul-float/2addr v12, v13

    float-to-long v12, v12

    mul-long v12, v12, v16

    iput-wide v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1280
    iget v14, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    long-to-float v8, v8

    mul-float/2addr v14, v8

    float-to-long v8, v14

    mul-long v8, v8, v16

    iput-wide v8, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    sub-long/2addr v8, v12

    .line 1281
    iput-wide v8, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 1282
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iput v8, v2, Lorg/telegram/messenger/VideoEditedInfo;->volume:F

    .line 1283
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v8, v2, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    const/4 v8, 0x5

    .line 1284
    aget v1, v1, v8

    int-to-float v1, v1

    int-to-float v6, v6

    div-float/2addr v6, v7

    int-to-float v4, v4

    mul-float/2addr v6, v4

    div-float v6, v6, v18

    add-float/2addr v1, v6

    float-to-long v6, v1

    iput-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1285
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-wide v8, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1286
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 1287
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-nez v1, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    :goto_5
    iput-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    const-wide/16 v21, 0x0

    goto/16 :goto_d

    :cond_8
    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v18, 0x41000000    # 8.0f

    .line 1289
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v6, :cond_9

    .line 1290
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    goto :goto_6

    .line 1292
    :cond_9
    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1294
    :goto_6
    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    .line 1295
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    .line 1296
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v15

    move v6, v1

    .line 1298
    :goto_7
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_b

    .line 1299
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 1300
    iget-boolean v13, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v13, :cond_a

    .line 1302
    iget v6, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    aget-object v13, p2, v1

    aget v13, v13, v3

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 1303
    iget v6, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    aget-object v13, p2, v1

    const/4 v14, 0x2

    aget v13, v13, v14

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 1304
    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    aget-object v6, p2, v1

    aget v6, v6, v9

    int-to-long v5, v6

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    move v6, v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1307
    :cond_b
    invoke-static {v0}, Lorg/telegram/messenger/VideoEditedInfo$Part;->toParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    if-nez v6, :cond_c

    .line 1309
    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    move/from16 v19, v7

    goto/16 :goto_b

    .line 1313
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v13, v15

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    :goto_8
    if-ge v13, v5, :cond_e

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lorg/telegram/messenger/VideoEditedInfo$Part;

    move/from16 v19, v7

    .line 1314
    iget-boolean v7, v14, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    move/from16 p1, v13

    if-eqz v7, :cond_d

    iget-wide v12, v14, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    cmp-long v20, v12, v8

    if-lez v20, :cond_d

    move-wide v8, v12

    move-object v6, v14

    :cond_d
    move/from16 v13, p1

    move/from16 v7, v19

    const/4 v12, -0x1

    goto :goto_8

    :cond_e
    move/from16 v19, v7

    if-eqz v6, :cond_14

    .line 1320
    iget-wide v8, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    long-to-float v1, v8

    iget v5, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->right:F

    iget v12, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->left:F

    sub-float/2addr v5, v12

    mul-float/2addr v1, v5

    float-to-long v13, v1

    iput-wide v13, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 1321
    iget-wide v13, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    long-to-float v1, v8

    mul-float/2addr v12, v1

    float-to-long v8, v12

    add-long/2addr v13, v8

    neg-long v8, v13

    .line 1322
    iput-wide v8, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    .line 1323
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v12, v15

    :goto_9
    if-ge v12, v5, :cond_10

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lorg/telegram/messenger/VideoEditedInfo$Part;

    .line 1324
    iget-boolean v14, v13, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    if-eqz v14, :cond_f

    if-eq v13, v6, :cond_f

    move-wide/from16 v21, v8

    .line 1325
    iget-wide v7, v13, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    add-long v7, v7, v21

    iput-wide v7, v13, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    goto :goto_a

    :cond_f
    move-wide/from16 v21, v8

    :goto_a
    move-wide/from16 v8, v21

    goto :goto_9

    :cond_10
    move-wide/from16 v21, v8

    goto :goto_c

    :cond_11
    move/from16 v19, v7

    .line 1330
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v1, :cond_12

    .line 1331
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    sub-float/2addr v1, v5

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-long v5, v1

    iput-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    goto :goto_b

    .line 1332
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 1333
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    sub-float/2addr v1, v5

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-long v5, v1

    iput-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    goto :goto_b

    .line 1335
    :cond_13
    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    :cond_14
    :goto_b
    const-wide/16 v21, 0x0

    .line 1337
    :goto_c
    iput-wide v10, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1338
    iput-wide v10, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1339
    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    const/4 v7, -0x1

    .line 1340
    iput v7, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1341
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->volume:F

    .line 1342
    iput v7, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/16 v1, 0x1e

    .line 1343
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 1344
    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v1, v5

    div-float v1, v1, v19

    int-to-float v4, v4

    mul-float/2addr v1, v4

    div-float v1, v1, v18

    float-to-long v4, v1

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    const/4 v1, 0x0

    .line 1345
    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 1347
    :goto_d
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->account:I

    .line 1348
    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->wallpaperPeerId:J

    .line 1349
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    iput-boolean v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->isDark:Z

    .line 1350
    iput-wide v10, v2, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    .line 1352
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v1, :cond_15

    .line 1353
    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController$CropState;->clone()Lorg/telegram/messenger/MediaController$CropState;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    goto :goto_e

    .line 1355
    :cond_15
    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 1357
    :goto_e
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    .line 1358
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1360
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    .line 1362
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->gradientTopColor:Ljava/lang/Integer;

    .line 1363
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->gradientBottomColor:Ljava/lang/Integer;

    .line 1364
    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->forceFragmenting:Z

    .line 1366
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 1368
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1369
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-nez v1, :cond_17

    .line 1370
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_16
    :goto_f
    if-ge v15, v3, :cond_17

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v15, v15, 0x1

    check-cast v4, Lorg/telegram/messenger/VideoEditedInfo$Part;

    .line 1371
    iget-boolean v5, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    if-eqz v5, :cond_16

    iget v5, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16

    iget-boolean v5, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->muted:Z

    if-nez v5, :cond_16

    .line 1372
    new-instance v5, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    iget-object v6, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;-><init>(Ljava/lang/String;)V

    .line 1373
    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    iput v6, v5, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    .line 1374
    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->left:F

    iget-wide v7, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    long-to-float v9, v7

    mul-float/2addr v9, v6

    float-to-long v9, v9

    mul-long v9, v9, v16

    iput-wide v9, v5, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    .line 1375
    iget-wide v9, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    mul-long v9, v9, v16

    iput-wide v9, v5, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    .line 1376
    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo$Part;->right:F

    sub-float/2addr v4, v6

    long-to-float v6, v7

    mul-float/2addr v4, v6

    float-to-long v6, v4

    mul-long v6, v6, v16

    iput-wide v6, v5, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    .line 1377
    iget-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1381
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v1, :cond_1a

    .line 1382
    new-instance v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;-><init>(Ljava/lang/String;)V

    .line 1383
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iput v1, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    .line 1384
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-long v6, v6

    mul-long v6, v6, v16

    iput-wide v6, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    .line 1385
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v8, :cond_18

    .line 1386
    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    long-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-long v8, v8

    mul-long v8, v8, v16

    iput-wide v8, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    const-wide/16 v8, 0x0

    goto :goto_10

    :cond_18
    const-wide/16 v8, 0x0

    .line 1388
    iput-wide v8, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    .line 1390
    :goto_10
    iget-wide v10, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    add-long v10, v10, v21

    iput-wide v10, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    cmp-long v12, v10, v8

    if-gez v12, :cond_19

    sub-long/2addr v6, v10

    .line 1392
    iput-wide v6, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    .line 1393
    iput-wide v8, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    .line 1395
    :cond_19
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    sub-float/2addr v6, v1

    long-to-float v1, v4

    mul-float/2addr v6, v1

    float-to-long v4, v6

    mul-long v4, v4, v16

    iput-wide v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    .line 1396
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 1399
    new-instance v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;-><init>(Ljava/lang/String;)V

    .line 1400
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v1, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    .line 1401
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-long v6, v6

    mul-long v6, v6, v16

    iput-wide v6, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    .line 1402
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v8, :cond_1b

    .line 1403
    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    long-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-long v8, v8

    mul-long v8, v8, v16

    iput-wide v8, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    const-wide/16 v8, 0x0

    goto :goto_11

    :cond_1b
    const-wide/16 v8, 0x0

    .line 1405
    iput-wide v8, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    .line 1407
    :goto_11
    iget-wide v10, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    add-long v10, v10, v21

    iput-wide v10, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    cmp-long v12, v10, v8

    if-gez v12, :cond_1c

    sub-long/2addr v6, v10

    .line 1409
    iput-wide v6, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    .line 1410
    iput-wide v8, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    .line 1412
    :cond_1c
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    sub-float/2addr v6, v1

    long-to-float v1, v4

    mul-float/2addr v6, v1

    float-to-long v4, v6

    mul-long v4, v4, v16

    iput-wide v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    .line 1413
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    move-object/from16 v1, p3

    .line 1416
    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setupGradient$7(Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1132
    aget v0, p3, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v0, 0x1

    .line 1133
    aget p3, p3, v0

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 1134
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p2, :cond_0

    .line 1137
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupGradient$8(Ljava/lang/Runnable;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1143
    aget v0, p2, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v0, 0x1

    .line 1144
    aget p2, p2, v0

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz p1, :cond_0

    .line 1146
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFilter$6(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V
    .locals 3

    const/16 v0, 0x5a

    .line 605
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_0

    .line 606
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 608
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    .line 611
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 612
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 614
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 618
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 619
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static makeCacheFile(ILjava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1445
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    const-wide/32 v1, -0x80000000

    .line 1446
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/high16 v1, -0x80000000

    .line 1447
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 1448
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    const/4 v1, 0x0

    .line 1449
    new-array v1, v1, [B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    .line 1452
    const-string v1, "mp4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "webm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1457
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 1458
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    .line 1453
    :cond_1
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;-><init>()V

    .line 1454
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1462
    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static makeCacheFile(IZ)Ljava/io/File;
    .locals 0

    if-eqz p1, :cond_0

    .line 1441
    const-string p1, "mp4"

    goto :goto_0

    :cond_0
    const-string p1, "jpg"

    :goto_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static repostMessage(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 5

    .line 837
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    .line 838
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    .line 839
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    const/16 v2, 0x438

    .line 840
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 v2, 0x780

    .line 841
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v2, 0x0

    .line 842
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 843
    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getRepostDialogId(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    .line 845
    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    const/4 v4, 0x6

    .line 846
    iput-byte v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v4, 0x3f000000    # 0.5f

    .line 847
    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 848
    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 849
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 850
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 853
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/MessageObject;

    if-eqz p0, :cond_5

    .line 854
    iget v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 855
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 856
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 858
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 859
    :cond_2
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 861
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 862
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 863
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    .line 864
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const/4 p0, 0x0

    .line 865
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const p0, 0x47686c00    # 59500.0f

    long-to-float v1, v1

    div-float/2addr p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 866
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    return-object v0

    :cond_4
    const/4 p0, 0x0

    .line 868
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :cond_5
    return-object v0
.end method

.method public static repostStoryItem(Ljava/io/File;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 5

    .line 715
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    .line 716
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    .line 717
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 718
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 719
    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostStoryId:I

    .line 720
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostCaption:Ljava/lang/String;

    .line 721
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    const/4 v2, 0x0

    .line 722
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    const/16 v3, 0x2d0

    .line 723
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/16 v3, 0x500

    .line 724
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 725
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_0

    .line 726
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_6

    .line 728
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 730
    :cond_0
    instance-of p0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz p0, :cond_6

    .line 731
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 732
    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    move p0, v2

    .line 733
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 734
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 735
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_1

    .line 736
    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 737
    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 738
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 743
    :cond_2
    :goto_1
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_6

    .line 744
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 745
    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    goto :goto_4

    .line 746
    :cond_3
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    .line 747
    :goto_2
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_6

    .line 748
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 749
    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_4

    .line 750
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 753
    :cond_4
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 754
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 755
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 762
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    .line 763
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickers(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-object v0
.end method

.method public static setupScale(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 7

    .line 1181
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    .line 1182
    invoke-virtual {p2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 1183
    invoke-virtual {p2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1185
    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v3, p2, v2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gtz v0, :cond_1

    .line 1186
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0x1068

    if-gt p2, v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 1188
    iput-boolean p2, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1189
    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1190
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    return-void
.end method

.method public static useForwardForRepost(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 797
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_0

    goto :goto_1

    .line 798
    :cond_0
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 799
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    .line 800
    iget v3, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 801
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 802
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_5

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 803
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    .line 804
    iget p0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    if-eqz p0, :cond_3

    .line 805
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-nez v1, :cond_5

    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 808
    :cond_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    :goto_0
    return-object v0

    .line 813
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method


# virtual methods
.method public buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 266
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 268
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 269
    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v6, v0

    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v7, v0

    .line 270
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 271
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    const/4 v15, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-static {v0, v6, v7, v11, v13}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 277
    iget v14, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v14, v14

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v14, v11

    .line 278
    invoke-virtual {v9, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 279
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 280
    invoke-virtual {v9, v0, v12, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v16, v8

    move v8, v13

    move/from16 v19, v15

    :goto_1
    move-object v15, v10

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 284
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperEmoticon:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 287
    iget-object v11, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_1

    .line 289
    iget v11, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-boolean v14, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    invoke-static {v11, v0, v14}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 291
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    invoke-static {v9, v11, v0, v14}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    .line 292
    :cond_2
    iget-wide v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v0, v12, v16

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 295
    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-boolean v11, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    invoke-static {v10, v0, v12, v13, v11}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 297
    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-static {v9, v0, v11, v12}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v16, v8

    move/from16 v19, v15

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x1

    .line 299
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 300
    new-instance v17, Landroid/graphics/LinearGradient;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iget v13, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    filled-new-array {v12, v13}, [I

    move-result-object v22

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v0

    move-object/from16 v23, v12

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 301
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v12, v0

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v13, v0

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move/from16 v18, v11

    const/4 v11, 0x0

    move-object/from16 v16, v8

    move/from16 v19, v15

    move-object/from16 v15, v17

    move/from16 v8, v18

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 304
    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz v3, :cond_5

    .line 306
    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 307
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 308
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 309
    invoke-virtual {v9, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_c

    .line 337
    :cond_5
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v11, 0x0

    .line 338
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_b

    .line 339
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 340
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :goto_4
    if-eqz v3, :cond_8

    .line 343
    :try_start_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda5;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda5;-><init>(Ljava/io/File;)V

    invoke-static {v0, v6, v7, v8, v8}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 345
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 346
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 347
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v3

    .line 348
    iget-object v14, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    div-int/lit8 v14, v14, 0x5a

    rem-int/lit8 v14, v14, 0x2

    if-ne v14, v8, :cond_7

    .line 349
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 350
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    .line 352
    :cond_7
    :goto_5
    iget-object v14, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v14, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v8, v6

    int-to-float v15, v7

    :try_start_2
    invoke-virtual {v14, v10, v8, v15}, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->bounds(Landroid/graphics/RectF;FF)V

    .line 353
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v9, v8, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 354
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v8

    neg-float v8, v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v8, v14

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v15

    neg-float v15, v15

    div-float/2addr v15, v14

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v21

    move/from16 p2, v14

    div-float v14, v21, p2

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v21

    move-object/from16 v22, v10

    div-float v10, v21, p2

    invoke-virtual {v9, v8, v15, v14, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 355
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v8

    int-to-float v10, v12

    div-float/2addr v8, v10

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v10

    int-to-float v12, v13

    div-float/2addr v10, v12

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 356
    invoke-virtual {v9, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 357
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 358
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float v3, v3, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float v8, v8, p2

    invoke-virtual {v9, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 359
    :try_start_3
    invoke-virtual {v9, v0, v3, v3, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 360
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v15, 0x0

    .line 362
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 367
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :goto_8
    if-eqz v0, :cond_b

    .line 370
    :try_start_4
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda6;-><init>(Ljava/io/File;)V

    const/4 v11, 0x1

    invoke-static {v3, v6, v7, v11, v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 371
    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v3, v8

    .line 372
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 373
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 374
    invoke-virtual {v9, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 375
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 377
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 416
    :cond_b
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 418
    :try_start_5
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-static {v0, v6, v7, v3, v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 419
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 420
    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v3, v8

    .line 421
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 422
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    .line 423
    invoke-virtual {v9, v0, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 424
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 425
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    .line 427
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 431
    :cond_c
    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 433
    :try_start_6
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-static {v0, v6, v7, v3, v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 434
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 435
    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v3, v8

    .line 436
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 437
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    .line 438
    invoke-virtual {v9, v0, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 439
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 440
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 442
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 446
    :cond_d
    :goto_b
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_e

    .line 448
    :try_start_7
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-static {v0, v6, v7, v3, v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 450
    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 451
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 452
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    .line 453
    invoke-virtual {v9, v0, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 454
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 455
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    .line 457
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_e
    :goto_c
    return-object v16

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildPhoto(Ljava/io/File;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 467
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 469
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/16 v1, 0x16

    const/4 v2, 0x1

    const/16 v3, 0x28

    .line 471
    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 473
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 474
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 475
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 477
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 479
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public cancelCheckStickers()V
    .locals 3

    .line 1610
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    if-eqz v0, :cond_0

    .line 1611
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    return-void
.end method

.method public checkStickers(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 1537
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1540
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;-><init>()V

    .line 1541
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1543
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 1546
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;-><init>()V

    .line 1547
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1548
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 1549
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 1550
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    if-nez v2, :cond_2

    .line 1552
    new-array v2, v3, [B

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 1554
    :cond_2
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    goto :goto_0

    .line 1555
    :cond_3
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_6

    .line 1557
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isDocumentHasAttachedStickers(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 1560
    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;-><init>()V

    .line 1561
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1562
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1563
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1564
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v1, :cond_5

    .line 1566
    new-array v1, v3, [B

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 1568
    :cond_5
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    .line 1572
    :goto_0
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 1599
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    :cond_6
    :goto_1
    return-void
.end method

.method public clearFilter()V
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 632
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public clearPaint()V
    .locals 2

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 639
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 643
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    .line 645
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 647
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    .line 649
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 650
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 651
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    .line 653
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 654
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 655
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    :cond_4
    return-void
.end method

.method public copy()Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 1

    const/4 v0, 0x0

    .line 1616
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->copy(Z)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    return-object v0
.end method

.method public copy(Z)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 3

    .line 1620
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 1621
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    .line 1622
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    .line 1623
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    .line 1624
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    .line 1625
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    .line 1626
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    .line 1627
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    .line 1628
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    .line 1629
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 1630
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    .line 1631
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    .line 1633
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 1635
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 1636
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 1638
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    .line 1639
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    .line 1640
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    .line 1641
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    .line 1642
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    .line 1643
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    .line 1644
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    .line 1645
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    .line 1646
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 1647
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 1648
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    .line 1649
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v0, :cond_0

    .line 1650
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 1651
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1653
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    .line 1654
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    .line 1655
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 1656
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 1657
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    .line 1658
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 1659
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 1660
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 1661
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 1662
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1663
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 1664
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1665
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    .line 1666
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 1667
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 1668
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 1670
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1671
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1672
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    .line 1673
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    .line 1674
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    .line 1676
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    .line 1677
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    .line 1678
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->albums:Ljava/util/HashSet;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->albums:Ljava/util/HashSet;

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    .line 1683
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1685
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    .line 1686
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1687
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    .line 1688
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1690
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1692
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 1693
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1695
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1697
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    .line 1698
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1700
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1702
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    .line 1703
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1705
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    .line 1706
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1707
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    .line 1708
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1710
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1712
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    .line 1713
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1715
    :cond_7
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    .line 1716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1718
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1719
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v2}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->copy()Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1722
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    .line 1723
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    .line 1724
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1726
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    .line 1727
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    .line 1729
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1731
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    .line 1732
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    .line 1733
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    .line 1734
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isShare:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isShare:Z

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    .line 1736
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    .line 1737
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    .line 1738
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    .line 1740
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    .line 1741
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    .line 1742
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    .line 1743
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    .line 1744
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    .line 1745
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1746
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    .line 1749
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLoop:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLoop:Z

    .line 1750
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    .line 1751
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    return-object p1
.end method

.method public cutIntoEntries()Ljava/util/ArrayList;
    .locals 15

    .line 1204
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1206
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    sub-float/2addr v0, v4

    long-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-long v2, v0

    const-wide/32 v4, 0x10d87

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return-object v1

    .line 1211
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v4, v4

    const v5, 0x47667800    # 59000.0f

    div-float/2addr v5, v4

    add-float/2addr v1, v5

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 1214
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v4, 0xe678

    move-wide v6, v4

    :goto_0
    cmp-long v1, v6, v2

    if-gez v1, :cond_3

    sub-long v8, v2, v6

    .line 1217
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v1, v8, v10

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 1221
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->copy(Z)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    .line 1222
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float v11, v6

    iget-wide v12, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v14, v12

    div-float/2addr v11, v14

    add-float/2addr v10, v11

    iput v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 1223
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    add-long/2addr v8, v6

    long-to-float v8, v8

    long-to-float v9, v12

    div-float/2addr v8, v9

    add-float/2addr v10, v8

    iput v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 1224
    const-string v8, ""

    iput-object v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    add-long/2addr v6, v4

    .line 1226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public decodeBounds(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1050
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 1051
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1052
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1053
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 1054
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :catch_0
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez p1, :cond_2

    .line 1058
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x384

    if-gt p1, v0, :cond_1

    const/16 p1, 0x2d0

    .line 1064
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 p1, 0x500

    .line 1065
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x438

    .line 1067
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 p1, 0x780

    .line 1068
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy(Z)V
    .locals 8

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 661
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    .line 663
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 665
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 668
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearPaint()V

    .line 669
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearFilter()V

    .line 670
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v2, :cond_4

    .line 671
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v3, :cond_3

    .line 672
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 674
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 676
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 677
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v2, :cond_5

    .line 678
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 680
    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    .line 682
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 683
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :cond_7
    :goto_0
    if-ge v4, v3, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 684
    iget-byte v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    iget-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 686
    :try_start_0
    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 688
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 690
    :goto_1
    const-string v6, ""

    iput-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    goto :goto_0

    .line 694
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v2, :cond_a

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v3, :cond_a

    .line 695
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 696
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    .line 698
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v2, :cond_c

    .line 700
    :cond_b
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    :catch_1
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    .line 705
    :cond_c
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    .line 706
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 707
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 708
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 711
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cancelCheckStickers()V

    return-void
.end method

.method public detectHDR(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    if-eqz v0, :cond_1

    .line 1496
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 1499
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    goto :goto_0

    .line 1503
    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1500
    :cond_3
    :goto_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public getOriginalFile()Ljava/io/File;
    .locals 1

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 6

    .line 1195
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_2

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1197
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    sub-float/2addr v0, v4

    long-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-long v2, v0

    const-wide/32 v4, 0x10d87

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    long-to-float v0, v2

    const v1, 0x47667800    # 59000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 1200
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getVideoEditedInfo(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 7

    .line 1233
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1234
    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 1237
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    if-gt v0, v3, :cond_1

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    if-le v4, v2, :cond_2

    :cond_1
    const/high16 v4, 0x44340000    # 720.0f

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1240
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 1241
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 1243
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1244
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/16 v6, 0xb

    aput v6, v5, v4

    aput v2, v5, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 1245
    new-array v4, v6, [I

    aput-object v4, v2, v3

    .line 1246
    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;[[ILorg/telegram/messenger/Utilities$Callback;)V

    .line 1418
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1419
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 1420
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, p1, v3

    .line 1422
    new-array v0, v6, [I

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1424
    :cond_6
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, v2, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda12;-><init>([Ljava/lang/String;[[ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1430
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez p1, :cond_8

    .line 1431
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1433
    :cond_8
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, v2, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;[[ILjava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hasVideo()Z
    .locals 3

    .line 980
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 981
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 982
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isCollage()Z
    .locals 1

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setupGradient(Ljava/lang/Runnable;)V
    .locals 7

    .line 1103
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-nez v0, :cond_2

    .line 1104
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1107
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1108
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const-string v3, "vthumb://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xf0

    if-eqz v2, :cond_0

    .line 1109
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v5, v2

    .line 1110
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1111
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v6, v1, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1113
    invoke-static {v0, v4, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1114
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1115
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1116
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1117
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v6, v1, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1119
    :cond_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1120
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 1122
    invoke-static {v0, v4, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1123
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1124
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1125
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1131
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    invoke-static {v1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    .line 1141
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1142
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;)V

    invoke-static {v1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setupMatrix()V
    .locals 2

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix(Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public setupMatrix(Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1078
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 1079
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 1080
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    add-int/2addr v2, p2

    .line 1081
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-ne p2, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const/4 v6, 0x2

    if-ne p2, v6, :cond_1

    move v4, v5

    :cond_1
    int-to-float p2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p2, v5

    int-to-float v6, v1

    div-float/2addr v6, v5

    invoke-virtual {p1, v3, v4, p2, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v2, :cond_4

    neg-int p2, v0

    int-to-float p2, p2

    div-float/2addr p2, v5

    neg-int v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 1083
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p2, v2

    .line 1084
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 p2, 0x5a

    if-eq v2, p2, :cond_2

    const/16 p2, 0x10e

    if-ne v2, p2, :cond_3

    :cond_2
    move v8, v1

    move v1, v0

    move v0, v8

    :cond_3
    int-to-float p2, v0

    div-float/2addr p2, v5

    int-to-float v2, v1

    div-float/2addr v2, v5

    .line 1090
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1092
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 1093
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    .line 1094
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_5
    int-to-float v2, v1

    div-float v3, v2, v0

    const v4, 0x3fa51eb8    # 1.29f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 1096
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1098
    :cond_6
    :goto_1
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1099
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, p2

    sub-float/2addr v2, v0

    div-float/2addr v2, v5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public setupMultipleStoriesSelector()V
    .locals 10

    .line 963
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/32 v2, 0x10d88

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 965
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/32 v2, 0xe678

    sub-long v4, v0, v2

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    .line 966
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 968
    :goto_0
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    sub-long v8, v4, v0

    cmp-long v6, v8, v6

    if-lez v6, :cond_1

    sub-long/2addr v4, v0

    .line 969
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    long-to-float v0, v0

    .line 971
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    :cond_2
    return-void
.end method

.method public updateFilter(Lorg/telegram/ui/Components/PhotoFilterView;Ljava/lang/Runnable;)V
    .locals 9

    .line 559
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearFilter()V

    .line 561
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->getSavedFilterState()Lorg/telegram/messenger/MediaController$SavedFilterState;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 562
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v1, :cond_a

    .line 563
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController$SavedFilterState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_b

    .line 565
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 570
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_b

    .line 573
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 578
    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 579
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v8, 0x1

    if-ne p1, v8, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    move v0, v2

    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v6, v3, v0, p1, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 580
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 581
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 583
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 584
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 586
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 591
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 592
    const-string v1, "png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "webp"

    if-nez v1, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    .line 593
    :cond_6
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    const-string v2, "jpg"

    :goto_2
    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez p2, :cond_9

    .line 596
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v8, :cond_8

    .line 597
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_4

    :cond_8
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_3
    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 599
    :goto_4
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 601
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    .line 603
    :cond_9
    sget-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v8, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_a
    if-eqz p2, :cond_b

    .line 624
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_b
    :goto_6
    return-void
.end method

.method public wouldBeVideo()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public wouldBeVideo(Ljava/util/ArrayList;)Z
    .locals 7

    .line 201
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    return v1

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v0, :cond_2

    return v1

    .line 210
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    if-eqz p1, :cond_7

    .line 216
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 217
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 218
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 219
    iget-byte v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez v4, :cond_4

    .line 220
    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_4
    if-ne v4, v1, :cond_6

    .line 223
    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v2

    .line 224
    :goto_1
    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 225
    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 226
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v2
.end method
