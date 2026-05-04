.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed_layer153;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionBotAllowed_layer153"
.end annotation


# instance fields
.field public domain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26789
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 0

    .line 26795
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed_layer153;->domain:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x54165002

    .line 26799
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 26800
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed_layer153;->domain:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
