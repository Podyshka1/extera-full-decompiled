.class public final Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TL_payments_savedStarGifts"
.end annotation


# static fields
.field public static final constructor:I = -0x6a0c764f


# instance fields
.field public chat_notifications_enabled:Z

.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public flags:I

.field public gifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;",
            ">;"
        }
    .end annotation
.end field

.field public next_offset:Ljava/lang/String;

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5395
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    .line 5403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chats:Ljava/util/ArrayList;

    .line 5404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;
    .locals 2

    const v0, -0x6a0c764f

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5407
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;-><init>()V

    .line 5408
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 5413
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->flags:I

    .line 5414
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->count:I

    .line 5415
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5416
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chat_notifications_enabled:Z

    .line 5418
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    .line 5419
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5420
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->next_offset:Ljava/lang/String;

    .line 5422
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chats:Ljava/util/ArrayList;

    .line 5423
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x6a0c764f

    .line 5428
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5429
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5430
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5431
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5432
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chat_notifications_enabled:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 5434
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 5435
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5436
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->next_offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5438
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 5439
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
