.class public abstract Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "messages_AllStickers"
.end annotation


# instance fields
.field public documents:Ljava/util/ArrayList;

.field public packs:Ljava/util/ArrayList;

.field public sets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35005
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 35007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;->sets:Ljava/util/ArrayList;

    .line 35008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;->packs:Ljava/util/ArrayList;

    .line 35009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
    .locals 2

    const v0, -0x32443145    # -3.9386096E8f

    if-eq p1, v0, :cond_1

    const v0, -0x1799fd3d

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 35018
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickersNotModified;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickersNotModified;-><init>()V

    goto :goto_0

    .line 35015
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;-><init>()V

    .line 35021
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;

    return-object p0
.end method
