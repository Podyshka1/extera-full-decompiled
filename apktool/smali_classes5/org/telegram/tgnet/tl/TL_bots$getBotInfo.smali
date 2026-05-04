.class public Lorg/telegram/tgnet/tl/TL_bots$getBotInfo;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_bots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getBotInfo"
.end annotation


# static fields
.field public static final constructor:I = -0x2326eb03


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public flags:I

.field public lang_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 231
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x2326eb03

    .line 235
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 236
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$getBotInfo;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 237
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$getBotInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$getBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$getBotInfo;->lang_code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
