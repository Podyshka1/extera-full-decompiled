.class public Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
.super Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_appUpdate"
.end annotation


# static fields
.field public static final constructor:I = -0x334431d0


# instance fields
.field public can_not_skip:Z

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public id:I

.field public sticker:Lorg/telegram/tgnet/TLRPC$Document;

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5507
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_AppUpdate;-><init>()V

    .line 5515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 5521
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5522
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->can_not_skip:Z

    .line 5523
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->id:I

    .line 5524
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    .line 5525
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    .line 5526
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->entities:Ljava/util/ArrayList;

    .line 5527
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5528
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 5530
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5531
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    .line 5533
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5534
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x334431d0    # -9.846413E7f

    .line 5539
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5540
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->can_not_skip:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    .line 5541
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5542
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5543
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5544
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5545
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 5546
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5547
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5549
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5550
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5552
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5553
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_3
    return-void
.end method
