.class public Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_changeStarsSubscription"
.end annotation


# static fields
.field public static final constructor:I = -0x3888f788


# instance fields
.field public canceled:Ljava/lang/Boolean;

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public subscription_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4027
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 4036
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3888f788

    .line 4040
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4041
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->canceled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->flags:I

    .line 4042
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4043
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 4044
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->subscription_id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 4045
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 4046
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->canceled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_1
    return-void
.end method
