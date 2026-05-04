.class public Lorg/telegram/tgnet/TLRPC$TL_emojiKeyword;
.super Lorg/telegram/tgnet/TLRPC$EmojiKeyword;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_emojiKeyword"
.end annotation


# instance fields
.field public emoticons:Ljava/util/ArrayList;

.field public keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40998
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$EmojiKeyword;-><init>()V

    .line 41002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiKeyword;->emoticons:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 41005
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiKeyword;->keyword:Ljava/lang/String;

    .line 41006
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiKeyword;->emoticons:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x2a4c4607

    .line 41010
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41011
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiKeyword;->keyword:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41012
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiKeyword;->emoticons:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
