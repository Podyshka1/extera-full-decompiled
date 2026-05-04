.class public Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_searchCounter"
.end annotation


# instance fields
.field public count:I

.field public filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public flags:I

.field public inexact:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20028
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;
    .locals 2

    const v0, -0x17bb1401

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 20037
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;-><init>()V

    .line 20038
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 20042
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20043
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->inexact:Z

    .line 20044
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessagesFilter;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 20045
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x17bb1401

    .line 20049
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 20050
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->inexact:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->flags:I

    .line 20051
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 20052
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 20053
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
