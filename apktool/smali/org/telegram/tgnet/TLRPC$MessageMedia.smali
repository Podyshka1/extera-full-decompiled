.class public abstract Lorg/telegram/tgnet/TLRPC$MessageMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessageMedia"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public alt_documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field public attachPath:Ljava/lang/String;

.field public audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

.field public bytes:[B

.field public captionLegacy:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public extended_media:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;",
            ">;"
        }
    .end annotation
.end field

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public force_large_media:Z

.field public force_small_media:Z

.field public game:Lorg/telegram/tgnet/TLRPC$TL_game;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public heading:I

.field public id:I

.field public last_name:Ljava/lang/String;

.field public manual:Z

.field public nopremium:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public period:I

.field public phone_number:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public provider:Ljava/lang/String;

.field public proximity_notification_radius:I

.field public receipt_msg_id:I

.field public round:Z

.field public safe:Z

.field public shipping_address_requested:Z

.field public spoiler:Z

.field public stars_amount:J

.field public start_param:Ljava/lang/String;

.field public storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public test:Z

.field public title:Ljava/lang/String;

.field public total_amount:J

.field public ttl_seconds:I

.field public user_id:J

.field public vcard:Ljava/lang/String;

.field public venue_id:Ljava/lang/String;

.field public venue_type:Ljava/lang/String;

.field public via_mention:Z

.field public video:Z

.field public video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

.field public video_timestamp:I

.field public video_unused:Lorg/telegram/tgnet/TLRPC$Video;

.field public voice:Z

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61816
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 61835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    .line 61865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 5

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 61929
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer74;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer74;-><init>()V

    goto/16 :goto_0

    .line 61911
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive_layer119;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive_layer119;-><init>()V

    goto/16 :goto_0

    .line 61905
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue_layer71;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue_layer71;-><init>()V

    goto/16 :goto_0

    .line 62007
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    goto/16 :goto_0

    .line 61935
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    goto/16 :goto_0

    .line 61893
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory;-><init>()V

    goto/16 :goto_0

    .line 61977
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer111;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer111;-><init>()V

    goto/16 :goto_0

    .line 61932
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer81;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer81;-><init>()V

    goto/16 :goto_0

    .line 61968
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;-><init>()V

    goto/16 :goto_0

    .line 61953
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway_layer167;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway_layer167;-><init>()V

    goto/16 :goto_0

    .line 61980
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    goto/16 :goto_0

    .line 61989
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    goto/16 :goto_0

    .line 61998
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer187;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer187;-><init>()V

    goto/16 :goto_0

    .line 61938
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;-><init>()V

    goto/16 :goto_0

    .line 61974
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer220;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer220;-><init>()V

    goto/16 :goto_0

    .line 61890
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    goto/16 :goto_0

    .line 61965
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;-><init>()V

    goto/16 :goto_0

    .line 61920
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;-><init>()V

    goto/16 :goto_0

    .line 61914
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    goto/16 :goto_0

    .line 61872
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    goto/16 :goto_0

    .line 61971
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;-><init>()V

    goto/16 :goto_0

    .line 61926
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    goto/16 :goto_0

    .line 61884
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;-><init>()V

    goto/16 :goto_0

    .line 61923
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;-><init>()V

    goto/16 :goto_0

    .line 61986
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    goto/16 :goto_0

    .line 61995
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197;-><init>()V

    goto/16 :goto_0

    .line 61992
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197_2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197_2;-><init>()V

    goto/16 :goto_0

    .line 61950
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway_layer186;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway_layer186;-><init>()V

    goto/16 :goto_0

    .line 61941
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;-><init>()V

    goto/16 :goto_0

    .line 62004
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer131;-><init>()V

    goto/16 :goto_0

    .line 61896
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory_layer162;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory_layer162;-><init>()V

    goto/16 :goto_0

    .line 62010
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;-><init>()V

    goto :goto_0

    .line 61878
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;-><init>()V

    goto :goto_0

    .line 61902
    :sswitch_21
    new-instance v0, Lorg/telegram/ui/Stories/MessageMediaStoryFull_old;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/MessageMediaStoryFull_old;-><init>()V

    goto :goto_0

    .line 61899
    :sswitch_22
    new-instance v0, Lorg/telegram/ui/Stories/MessageMediaStoryFull;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/MessageMediaStoryFull;-><init>()V

    goto :goto_0

    .line 61875
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;-><init>()V

    goto :goto_0

    .line 61944
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults_layer186;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults_layer186;-><init>()V

    goto :goto_0

    .line 61908
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;-><init>()V

    goto :goto_0

    .line 61962
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer74;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer74;-><init>()V

    goto :goto_0

    .line 61947
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;-><init>()V

    goto :goto_0

    .line 61956
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;-><init>()V

    goto :goto_0

    .line 61983
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage_layer165;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage_layer165;-><init>()V

    goto :goto_0

    .line 61917
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;-><init>()V

    goto :goto_0

    .line 61887
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;-><init>()V

    goto :goto_0

    .line 62001
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer159;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer159;-><init>()V

    goto :goto_0

    .line 61959
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;-><init>()V

    goto :goto_0

    .line 61881
    :sswitch_2e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice_layer145;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice_layer145;-><init>()V

    .line 62014
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 62015
    const-string p1, ""

    const/4 p2, 0x0

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    if-eqz v1, :cond_3

    .line 62016
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 62017
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;

    if-eqz v2, :cond_0

    .line 62018
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 62019
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Video;->key:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 62020
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Video;->iv:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    goto :goto_1

    .line 62022
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 62024
    :goto_1
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 62025
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array p2, p2, [B

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 62026
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 62027
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 62028
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 62029
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 62030
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_2

    .line 62032
    :cond_1
    const-string/jumbo v2, "video/mp4"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 62034
    :goto_2
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    int-to-long v2, v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 62035
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62036
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 62037
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    .line 62038
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 62039
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 62040
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 62041
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    int-to-double v2, p0

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 62042
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62044
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 62045
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    :cond_2
    return-object v1

    :cond_3
    if-eqz p0, :cond_7

    .line 62047
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    if-eqz v1, :cond_7

    .line 62048
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 62049
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;

    if-eqz v2, :cond_4

    .line 62050
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 62051
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Audio;->key:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 62052
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Audio;->iv:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    goto :goto_3

    .line 62054
    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 62056
    :goto_3
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 62057
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array p2, p2, [B

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 62058
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Audio;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 62059
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Audio;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 62060
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Audio;->date:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 62061
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 62062
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_4

    .line 62064
    :cond_5
    const-string v2, "audio/ogg"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 62066
    :goto_4
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Audio;->size:I

    int-to-long v2, p2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 62067
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    .line 62068
    const-string/jumbo v0, "s"

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 62069
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62070
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Audio;->dc_id:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 62071
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    .line 62072
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 62073
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Audio;->duration:I

    int-to-double v2, p0

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    const/4 p0, 0x1

    .line 62074
    iput-boolean p0, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 62075
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62077
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    if-nez p0, :cond_6

    .line 62078
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    :cond_6
    return-object v1

    :cond_7
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7baaecb9 -> :sswitch_2e
        -0x75ac4fec -> :sswitch_2d
        -0x634f8f29 -> :sswitch_2c
        -0x607b0b62 -> :sswitch_2b
        -0x5d2dbd70 -> :sswitch_2a
        -0x5cd22a00 -> :sswitch_29
        -0x577adb6f -> :sswitch_28
        -0x55f8c415 -> :sswitch_27
        -0x4addc4f1 -> :sswitch_26
        -0x46bf399a -> :sswitch_25
        -0x3966ef98 -> :sswitch_24
        -0x39497d00 -> :sswitch_23
        -0x386511e3 -> :sswitch_22
        -0x386511e1 -> :sswitch_21
        -0x373ba5d6 -> :sswitch_20
        -0x35a35477 -> :sswitch_1f
        -0x344df278 -> :sswitch_1e
        -0x340db6c0 -> :sswitch_1d
        -0x3155c15f -> :sswitch_1c
        -0x25527a50 -> :sswitch_1b
        -0x244209ec -> :sswitch_1a
        -0x22a8f42b -> :sswitch_19
        -0x220ef3c5 -> :sswitch_18
        -0xc1fd158 -> :sswitch_17
        -0x95ab72d -> :sswitch_16
        -0x24e6ff8 -> :sswitch_15
        0x8cbec07 -> :sswitch_14
        0x29632a36 -> :sswitch_13
        0x2ec0533f -> :sswitch_12
        0x2fda2204 -> :sswitch_11
        0x3d8ce53d -> :sswitch_10
        0x3ded6320 -> :sswitch_f
        0x3f7ee58b -> :sswitch_e
        0x4bd6e798 -> :sswitch_d
        0x4cf4d72d -> :sswitch_c
        0x52d8ccd9 -> :sswitch_b
        0x56e0d474 -> :sswitch_a
        0x58260664 -> :sswitch_9
        0x5bcf1675 -> :sswitch_8
        0x5e7d2f39 -> :sswitch_7
        0x638fe46b -> :sswitch_6
        0x68cb6283 -> :sswitch_5
        0x695150d7 -> :sswitch_4
        0x70322949 -> :sswitch_3
        0x7912b71f -> :sswitch_2
        0x7c3c2609 -> :sswitch_1
        0x7c4414d3 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 2

    .line 62085
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->isStoryQualityFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62086
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    .line 62088
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method
