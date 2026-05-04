.class public abstract Lorg/telegram/tgnet/TLRPC$RequestPeerType;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPeerType"
.end annotation


# instance fields
.field public bot_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public bot_participant:Ljava/lang/Boolean;

.field public creator:Ljava/lang/Boolean;

.field public flags:I

.field public forum:Ljava/lang/Boolean;

.field public has_username:Ljava/lang/Boolean;

.field public user_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RequestPeerType;
    .locals 2

    const v0, -0x360f91e5

    if-eq p1, v0, :cond_2

    const v0, 0x339bef6c

    if-eq p1, v0, :cond_1

    const v0, 0x5f3b8a00

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeUser;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeChat;-><init>()V

    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    return-object p0
.end method
