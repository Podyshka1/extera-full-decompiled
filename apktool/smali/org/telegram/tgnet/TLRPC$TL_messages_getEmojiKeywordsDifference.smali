.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiKeywordsDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getEmojiKeywordsDifference"
.end annotation


# instance fields
.field public from_version:I

.field public lang_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58782
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 58789
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_emojiKeywordsDifference;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_emojiKeywordsDifference;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x1508b6af

    .line 58793
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58794
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiKeywordsDifference;->lang_code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 58795
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiKeywordsDifference;->from_version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
