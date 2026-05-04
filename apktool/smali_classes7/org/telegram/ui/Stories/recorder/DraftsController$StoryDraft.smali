.class public Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/DraftsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoryDraft"
.end annotation


# instance fields
.field public audioAuthor:Ljava/lang/String;

.field public audioDuration:J

.field public audioLeft:F

.field public audioOffset:J

.field public audioPath:Ljava/lang/String;

.field public audioRight:F

.field public audioTitle:Ljava/lang/String;

.field public audioVolume:F

.field public averageDuration:J

.field public botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public botId:J

.field public botLang:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public captionEntities:Ljava/util/ArrayList;

.field public collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field public collageParts:Ljava/util/ArrayList;

.field public crop:Lorg/telegram/messenger/MediaController$CropState;

.field public date:J

.field public duration:J

.field public editDocumentId:J

.field public editExpireDate:J

.field public editPhotoId:J

.field public editStoryId:I

.field public editStoryPeerId:J

.field public error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public file:Ljava/lang/String;

.field public fileDeletable:Z

.field private filterFilePath:Ljava/lang/String;

.field private filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public fullThumb:Ljava/lang/String;

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public height:I

.field public id:J

.field public invert:I

.field public isEdit:Z

.field public isError:Z

.field public isVideo:Z

.field public left:J

.field public final matrixValues:[F

.field public mediaEntities:Ljava/util/ArrayList;

.field public muted:Z

.field public orientation:I

.field public paintEntitiesFilePath:Ljava/lang/String;

.field public paintFilePath:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private period:I

.field public final privacyRules:Ljava/util/ArrayList;

.field public resultHeight:I

.field public resultWidth:I

.field public right:J

.field public roundDuration:J

.field public roundLeft:F

.field public roundOffset:J

.field public roundPath:Ljava/lang/String;

.field public roundRight:F

.field public roundThumb:Ljava/lang/String;

.field public roundVolume:F

.field public stickers:Ljava/util/List;

.field public thumb:Ljava/lang/String;

.field public videoVolume:F

.field public width:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 484
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 516
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    .line 517
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    .line 525
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    .line 527
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    .line 862
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, -0x4e94ff4b

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_8

    .line 864
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "StoryDraft parse error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 869
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    .line 870
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 872
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    .line 874
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    .line 875
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 876
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 877
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    .line 879
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    .line 880
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    .line 881
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    .line 882
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    .line 883
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    .line 884
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    .line 885
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    .line 886
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    .line 887
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    .line 888
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    .line 889
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    const/4 v0, 0x0

    move v2, v0

    .line 890
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 891
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 893
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    .line 894
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    .line 895
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 896
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 897
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    .line 899
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_7

    if-nez p2, :cond_6

    goto/16 :goto_8

    .line 902
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (1)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 905
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_9

    .line 907
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    .line 908
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    .line 910
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 912
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_b

    if-nez p2, :cond_a

    goto/16 :goto_8

    .line 915
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (2)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 918
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 919
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_2
    if-ge v4, v2, :cond_c

    .line 921
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 923
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    .line 924
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 925
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 926
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    .line 928
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    .line 929
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_f

    if-nez p2, :cond_e

    goto/16 :goto_8

    .line 932
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (3)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 935
    :cond_f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_3
    if-ge v4, v2, :cond_11

    .line 937
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_10

    .line 938
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    .line 940
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7, p2}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;ZZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 942
    :cond_11
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_13

    if-nez p2, :cond_12

    goto/16 :goto_8

    .line 945
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (4)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 948
    :cond_13
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_4
    if-ge v4, v2, :cond_15

    .line 950
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-nez v5, :cond_14

    .line 951
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    .line 953
    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 955
    :cond_15
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 956
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 957
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    .line 959
    :cond_16
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v4, 0x56730bcc

    if-ne v2, v4, :cond_17

    .line 961
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    goto :goto_5

    :cond_17
    const v5, -0x4e94ff4a

    if-ne v2, v5, :cond_18

    .line 963
    new-instance v2, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 964
    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/MediaController$SavedFilterState;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    .line 966
    :cond_18
    :goto_5
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    const/4 v5, 0x4

    if-lt v2, v5, :cond_19

    .line 967
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    .line 969
    :cond_19
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_1c

    .line 970
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_1b

    if-nez p2, :cond_1a

    goto/16 :goto_8

    .line 973
    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (5)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 976
    :cond_1b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    .line 978
    :cond_1c
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_1d

    .line 979
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    .line 980
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    .line 981
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    .line 982
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    .line 983
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    .line 984
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    .line 986
    :cond_1d
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_1e

    .line 987
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 988
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1e

    .line 989
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    .line 992
    :cond_1e
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_20

    .line 993
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    .line 994
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-ne v2, v4, :cond_1f

    .line 996
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    goto :goto_6

    .line 998
    :cond_1f
    invoke-static {p1, v2, p2}, Lorg/telegram/tgnet/TLRPC$TL_error;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_error;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 1000
    :goto_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    .line 1002
    :cond_20
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_23

    .line 1003
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const v2, -0x67ad063a

    if-ne v1, v2, :cond_23

    .line 1005
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    .line 1006
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const v2, -0x48e18986

    if-ne v1, v2, :cond_21

    .line 1008
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    .line 1010
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    if-ne v1, v2, :cond_22

    .line 1012
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    .line 1014
    :cond_22
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    .line 1015
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    .line 1016
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    .line 1017
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    .line 1018
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    .line 1021
    :cond_23
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_24

    .line 1022
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1024
    :cond_24
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_25

    .line 1025
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const v2, 0x43c57c48

    if-ne v1, v2, :cond_25

    .line 1027
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    .line 1028
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundDuration:J

    .line 1029
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundOffset:J

    .line 1030
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundLeft:F

    .line 1031
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundRight:F

    .line 1032
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    .line 1035
    :cond_25
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_26

    .line 1036
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    .line 1038
    :cond_26
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_27

    .line 1039
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botId:J

    .line 1040
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botLang:Ljava/lang/String;

    .line 1041
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    if-eq v1, v4, :cond_27

    .line 1043
    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$InputMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1046
    :cond_27
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_28

    .line 1047
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const v2, -0x21524111

    if-ne v1, v2, :cond_28

    .line 1049
    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    .line 1051
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 1052
    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo$Part;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo$Part;-><init>()V

    .line 1053
    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/VideoEditedInfo$Part;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    .line 1054
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    .line 1055
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1059
    :cond_28
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v0

    if-lez v0, :cond_29

    .line 1060
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x44a3abcd

    if-ne v0, v1, :cond_29

    .line 1062
    new-instance v0, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->crop:Lorg/telegram/messenger/MediaController$CropState;

    .line 1063
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MediaController$CropState;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_29
    :goto_8
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 8

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 484
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 516
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    .line 517
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    .line 525
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    .line 527
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    .line 539
    iget-wide v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    .line 540
    iget-wide v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    .line 541
    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    .line 542
    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    .line 543
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    .line 544
    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    .line 545
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    .line 546
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    .line 547
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v6, v4

    mul-float/2addr v2, v6

    float-to-long v6, v2

    iput-wide v6, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    .line 548
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    long-to-float v6, v4

    mul-float/2addr v2, v6

    float-to-long v6, v2

    iput-wide v6, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    .line 549
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    .line 550
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    .line 551
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    .line 552
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    .line 553
    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->crop:Lorg/telegram/messenger/MediaController$CropState;

    .line 554
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    .line 555
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    .line 556
    iput-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    .line 557
    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 558
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    .line 559
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    .line 560
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 561
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v6

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    .line 562
    aget-object v0, v4, v5

    if-nez v0, :cond_4

    move-object v0, v3

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    .line 563
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 564
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-nez v0, :cond_5

    move-object v0, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    .line 565
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-nez v0, :cond_6

    move-object v0, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    .line 566
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    .line 567
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    .line 568
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    .line 569
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    .line 570
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 571
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    .line 572
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    .line 573
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 575
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    .line 576
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    .line 577
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    .line 578
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    .line 579
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    .line 580
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    .line 581
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    .line 582
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    .line 584
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_8
    iput-object v6, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    .line 585
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundThumb:Ljava/lang/String;

    .line 586
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundDuration:J

    .line 587
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundOffset:J

    .line 588
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundLeft:F

    .line 589
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundRight:F

    .line 590
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    .line 592
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    .line 594
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 595
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botId:J

    .line 596
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botLang:Ljava/lang/String;

    .line 597
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 599
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    .line 600
    invoke-static {p1}, Lorg/telegram/messenger/VideoEditedInfo$Part;->toParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getObjectSize()I
    .locals 2

    .line 856
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(Z)V

    .line 857
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 858
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v0

    return v0
.end method

.method public toEntry()Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 10

    .line 604
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 605
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    const/4 v1, 0x1

    .line 606
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    .line 607
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    .line 608
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 609
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    .line 611
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    .line 614
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 615
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 616
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 618
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    .line 619
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    .line 620
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 622
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    long-to-float v4, v4

    long-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 623
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 625
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 626
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 628
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    .line 629
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 630
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 631
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 632
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    .line 633
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 634
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 635
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 636
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    .line 637
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 638
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 639
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 640
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    if-nez v3, :cond_4

    .line 641
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->createCommonMessageResources()V

    .line 643
    :cond_4
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 644
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v1

    .line 646
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    .line 648
    :cond_5
    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 650
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 651
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 652
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 653
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 655
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 656
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    .line 658
    :cond_7
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    .line 659
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 660
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 662
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    .line 664
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 665
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 666
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    .line 667
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    .line 668
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    .line 669
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    .line 670
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    .line 671
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    .line 672
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    .line 673
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 675
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 676
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 677
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 678
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    .line 679
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    .line 680
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    .line 681
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    .line 682
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    .line 684
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 685
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    .line 687
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundThumb:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    .line 688
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    .line 689
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundOffset:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    .line 690
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundLeft:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    .line 691
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundRight:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    .line 692
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    .line 694
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    .line 696
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 697
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    .line 698
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botLang:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    .line 699
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 701
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    .line 702
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/VideoEditedInfo$Part;->toStoryEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 6

    const v0, -0x4e94ff4b

    .line 708
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 709
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 711
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 713
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 714
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 715
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 716
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 717
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 718
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 719
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 720
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 721
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 722
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 723
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    const/4 v0, 0x0

    move v1, v0

    .line 724
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 725
    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 728
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 729
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v1, 0x1cb5c415

    .line 730
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 731
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 732
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move v2, v0

    .line 733
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 734
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 737
    :cond_2
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 738
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 739
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move v2, v0

    .line 740
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 741
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 744
    :cond_4
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 745
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 746
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 747
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 748
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 749
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    move v2, v0

    .line 750
    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 751
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v4, p1, v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 754
    :cond_6
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 755
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_7

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 756
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-eqz v2, :cond_8

    move v2, v0

    .line 757
    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 758
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 761
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    const-string v4, ""

    if-nez v2, :cond_9

    move-object v2, v4

    :cond_9
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 762
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    const v5, 0x56730bcc

    if-nez v2, :cond_a

    .line 763
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_9

    :cond_a
    const v2, -0x4e94ff4a

    .line 765
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 766
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MediaController$SavedFilterState;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 768
    :goto_9
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 769
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 770
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 771
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 772
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 773
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 774
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 775
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 776
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 777
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 778
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 779
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_b

    .line 780
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_a

    .line 782
    :cond_b
    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLRPC$TL_error;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 784
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 787
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_d

    :cond_c
    const v1, -0x67ad063a

    .line 789
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 790
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    const v2, -0x48e18986

    if-nez v1, :cond_d

    .line 792
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_b

    .line 794
    :cond_d
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 795
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 797
    :goto_b
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 798
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_c

    .line 800
    :cond_e
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 803
    :goto_c
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 804
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 805
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 806
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 807
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 810
    :goto_d
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_f

    .line 811
    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    goto :goto_e

    .line 813
    :cond_f
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 816
    :goto_e
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 817
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_f

    :cond_10
    const v1, 0x43c57c48

    .line 819
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 820
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 821
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundDuration:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 822
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundOffset:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 823
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundLeft:F

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 824
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundRight:F

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 825
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 828
    :goto_f
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 830
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botId:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 831
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botLang:Ljava/lang/String;

    if-nez v1, :cond_11

    goto :goto_10

    :cond_11
    move-object v4, v1

    :goto_10
    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    if-nez v1, :cond_12

    .line 833
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_11

    .line 835
    :cond_12
    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 838
    :goto_11
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_13

    goto :goto_13

    :cond_13
    const v1, -0x21524111

    .line 841
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 842
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_12
    if-ge v0, v2, :cond_15

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$Part;

    .line 844
    invoke-virtual {v3, p1}, Lorg/telegram/messenger/VideoEditedInfo$Part;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    goto :goto_12

    .line 839
    :cond_14
    :goto_13
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 848
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v0, :cond_16

    .line 849
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void

    .line 851
    :cond_16
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController$CropState;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
