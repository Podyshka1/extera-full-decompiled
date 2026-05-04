.class public Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updateConnectedBot"
.end annotation


# static fields
.field public static final constructor:I = 0x66a08c7e


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public deleted:Z

.field public flags:I

.field public recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

.field public rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2993
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 3004
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x66a08c7e

    .line 3009
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3010
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->deleted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->flags:I

    .line 3011
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->flags:I

    .line 3012
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3013
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3014
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3016
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3017
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
