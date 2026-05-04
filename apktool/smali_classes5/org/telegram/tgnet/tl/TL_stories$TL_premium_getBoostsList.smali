.class public Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_premium_getBoostsList"
.end annotation


# static fields
.field public static constructor:I = 0x60f67660


# instance fields
.field public flags:I

.field public gifts:Z

.field public limit:I

.field public offset:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1480
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1490
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    .line 1494
    sget v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->constructor:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1495
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->gifts:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->flags:I

    .line 1496
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1497
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1498
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1499
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
