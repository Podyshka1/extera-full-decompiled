.class public Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "createConferenceCall"
.end annotation


# static fields
.field public static final constructor:I = 0x7d0444bb


# instance fields
.field public block:[B

.field public flags:I

.field public join:Z

.field public muted:Z

.field public params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public public_key:[B

.field public random_id:I

.field public video_stopped:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1194
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1208
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x7d0444bb

    .line 1213
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1214
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->muted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->flags:I

    .line 1215
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->video_stopped:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->flags:I

    .line 1216
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->join:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->flags:I

    .line 1217
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1218
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->random_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1219
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1220
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->public_key:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBytes([B)V

    .line 1221
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->block:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 1222
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_3
    return-void
.end method
