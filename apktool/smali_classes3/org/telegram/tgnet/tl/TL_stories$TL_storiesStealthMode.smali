.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storiesStealthMode"
.end annotation


# static fields
.field public static final constructor:I = 0x712e27fd


# instance fields
.field public active_until_date:I

.field public cooldown_until_date:I

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1034
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;
    .locals 2

    const v0, 0x712e27fd

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1042
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;-><init>()V

    .line 1043
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 1047
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1049
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->active_until_date:I

    .line 1051
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1052
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->cooldown_until_date:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x712e27fd

    .line 1057
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1058
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1059
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1060
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->active_until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1062
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1063
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->cooldown_until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
