.class public abstract Lorg/telegram/tgnet/TLRPC$DialogPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DialogPeer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2727
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DialogPeer;
    .locals 2

    const v0, -0x1a9240fb

    if-eq p1, v0, :cond_1

    const v0, 0x514519e2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2736
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeerFolder;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialogPeerFolder;-><init>()V

    goto :goto_0

    .line 2733
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;-><init>()V

    .line 2739
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$DialogPeer;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$DialogPeer;

    return-object p0
.end method
