.class public abstract Lorg/telegram/tgnet/TLRPC$InputMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputMedia"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public attributes:Ljava/util/ArrayList;

.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public force_file:Z

.field public geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

.field public heading:I

.field public last_name:Ljava/lang/String;

.field public mime_type:Ljava/lang/String;

.field public nosound_video:Z

.field public period:I

.field public phone_number:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public proximity_notification_radius:I

.field public spoiler:Z

.field public stickers:Ljava/util/ArrayList;

.field public stopped:Z

.field public thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public title:Ljava/lang/String;

.field public ttl_seconds:I

.field public vcard:Ljava/lang/String;

.field public venue_id:Ljava/lang/String;

.field public venue_type:Ljava/lang/String;

.field public video_cover:Lorg/telegram/tgnet/TLRPC$InputPhoto;

.field public video_timestamp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30716
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 30725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    .line 30738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 30766
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocumentExternal;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocumentExternal;-><init>()V

    goto/16 :goto_0

    .line 30778
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaInvoice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaInvoice;-><init>()V

    goto/16 :goto_0

    .line 30775
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    goto/16 :goto_0

    .line 30772
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;-><init>()V

    goto/16 :goto_0

    .line 30790
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    goto/16 :goto_0

    .line 30763
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    goto :goto_0

    .line 30748
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    goto :goto_0

    .line 30760
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaStakeDice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaStakeDice;-><init>()V

    goto :goto_0

    .line 30757
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDice;-><init>()V

    goto :goto_0

    .line 30793
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhotoExternal;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhotoExternal;-><init>()V

    goto :goto_0

    .line 30754
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;-><init>()V

    goto :goto_0

    .line 30805
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;-><init>()V

    goto :goto_0

    .line 30799
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;-><init>()V

    goto :goto_0

    .line 30784
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    goto :goto_0

    .line 30796
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    goto :goto_0

    .line 30802
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia_layer186;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia_layer186;-><init>()V

    goto :goto_0

    .line 30751
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    goto :goto_0

    .line 30808
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaTodo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaTodo;-><init>()V

    goto :goto_0

    .line 30787
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    goto :goto_0

    .line 30769
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    goto :goto_0

    .line 30781
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaStory;-><init>()V

    .line 30811
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$InputMedia;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76022888 -> :sswitch_14
        -0x699b0a81 -> :sswitch_13
        -0x68e057bd -> :sswitch_12
        -0x603aa022 -> :sswitch_11
        -0x5789c54b -> :sswitch_10
        -0x5599e03d -> :sswitch_f
        -0x4c45f9cb -> :sswitch_e
        -0x3ec2e3ef -> :sswitch_d
        -0x3de477b7 -> :sswitch_c
        -0x3befcc7a -> :sswitch_b
        -0x2cc0bc0d -> :sswitch_a
        -0x1a4401e6 -> :sswitch_9
        -0x19904085 -> :sswitch_8
        -0xc56dbb6 -> :sswitch_7
        -0x7548205 -> :sswitch_6
        -0x63bbebc -> :sswitch_5
        0x37c9330 -> :sswitch_4
        0xf94e5f1 -> :sswitch_3
        0x1e287d04 -> :sswitch_2
        0x405fef0d -> :sswitch_1
        0x779600f9 -> :sswitch_0
    .end sparse-switch
.end method
