.class public Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_setChatWallPaper"
.end annotation


# instance fields
.field public flags:I

.field public for_both:Z

.field public id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public revert:Z

.field public settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

.field public wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x7005351f

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->for_both:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->revert:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
