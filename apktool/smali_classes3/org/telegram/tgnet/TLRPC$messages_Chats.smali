.class public abstract Lorg/telegram/tgnet/TLRPC$messages_Chats;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "messages_Chats"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;

.field public count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37403
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 37404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Chats;
    .locals 2

    const v0, -0x6327eebc

    if-eq p1, v0, :cond_1

    const v0, 0x64ff9fd5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 37411
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;-><init>()V

    goto :goto_0

    .line 37414
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chatsSlice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_chatsSlice;-><init>()V

    .line 37417
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    return-object p0
.end method
