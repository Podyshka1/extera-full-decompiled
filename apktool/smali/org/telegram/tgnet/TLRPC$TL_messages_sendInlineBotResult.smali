.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendInlineBotResult"
.end annotation


# instance fields
.field public allow_paid_stars:J

.field public background:Z

.field public clear_draft:Z

.field public flags:I

.field public hide_via:Z

.field public id:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public query_id:J

.field public quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

.field public random_id:J

.field public reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

.field public schedule_date:I

.field public send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public silent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57756
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57775
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x3f3089ba

    .line 57779
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57780
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 57781
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->background:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 57782
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 57783
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->hide_via:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x800

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x801

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 57784
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57785
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57786
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 57787
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57789
    :cond_4
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 57790
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 57791
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 57792
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    .line 57793
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->schedule_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57795
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    .line 57796
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57798
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 57799
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57801
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 57802
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->allow_paid_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_8
    return-void
.end method
