.class public Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getNotifyExceptions"
.end annotation


# static fields
.field public static final constructor:I = 0x53577479


# instance fields
.field public compare_sound:Z

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1478
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1486
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x53577479

    .line 1490
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1491
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->compare_sound:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->flags:I

    .line 1492
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1493
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1494
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
