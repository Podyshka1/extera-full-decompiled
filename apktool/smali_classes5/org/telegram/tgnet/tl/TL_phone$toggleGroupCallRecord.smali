.class public Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "toggleGroupCallRecord"
.end annotation


# static fields
.field public static final constructor:I = -0xed738f8


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public flags:I

.field public start:Z

.field public title:Ljava/lang/String;

.field public video:Z

.field public video_portrait:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 825
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 836
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0xed738f8

    .line 840
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 841
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->start:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    .line 842
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->video:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    .line 843
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 844
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 845
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 848
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 849
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallRecord;->video_portrait:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_3
    return-void
.end method
