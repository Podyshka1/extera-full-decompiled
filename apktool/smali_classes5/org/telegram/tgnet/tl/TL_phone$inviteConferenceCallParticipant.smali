.class public Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "inviteConferenceCallParticipant"
.end annotation


# static fields
.field public static final constructor:I = -0x430dd97b


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public flags:I

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public video:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1273
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1283
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x430dd97b

    .line 1288
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1289
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->video:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->flags:I

    .line 1290
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1291
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1292
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
