.class public Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsStatus;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_getStarsStatus"
.end annotation


# static fields
.field public static final constructor:I = 0x4ea9b3bf


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public ton:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3755
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 3762
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, 0x4ea9b3bf

    .line 3766
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 v0, 0x1

    .line 3769
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsStatus;->ton:Z

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    .line 3770
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3772
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsStatus;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
