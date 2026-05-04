.class public Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_sponsoredMessage"
.end annotation


# instance fields
.field public additional_info:Ljava/lang/String;

.field public button_text:Ljava/lang/String;

.field public can_report:Z

.field public color:Lorg/telegram/tgnet/TLRPC$PeerColor;

.field public entities:Ljava/util/ArrayList;

.field public flags:I

.field public max_display_duration:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public message:Ljava/lang/String;

.field public min_display_duration:I

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public random_id:[B

.field public recommended:Z

.field public sponsor_info:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38460
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 38471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;
    .locals 2

    const v0, 0x7dbf8673

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 38481
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;-><init>()V

    .line 38482
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 38486
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 38487
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->recommended:Z

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    move v2, v3

    .line 38488
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->can_report:Z

    .line 38489
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->random_id:[B

    .line 38490
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->url:Ljava/lang/String;

    .line 38491
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->title:Ljava/lang/String;

    .line 38492
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->message:Ljava/lang/String;

    .line 38493
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 38494
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->entities:Ljava/util/ArrayList;

    .line 38496
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 38497
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 38499
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    .line 38500
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 38502
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_5

    .line 38503
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 38505
    :cond_5
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->button_text:Ljava/lang/String;

    .line 38506
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 38507
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->sponsor_info:Ljava/lang/String;

    .line 38509
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 38510
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->additional_info:Ljava/lang/String;

    .line 38512
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 38513
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->min_display_duration:I

    .line 38514
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->max_display_duration:I

    :cond_8
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x7dbf8673

    .line 38519
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 38520
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->recommended:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    .line 38521
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->can_report:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x1000

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, -0x1001

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    .line 38522
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 38523
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->random_id:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 38524
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 38525
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 38526
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 38527
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 38528
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 38530
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 38531
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 38533
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    .line 38534
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 38536
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_5

    .line 38537
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 38539
    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->button_text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 38540
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 38541
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->sponsor_info:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 38543
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 38544
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->additional_info:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 38546
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 38547
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->min_display_duration:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 38548
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->max_display_duration:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_8
    return-void
.end method
