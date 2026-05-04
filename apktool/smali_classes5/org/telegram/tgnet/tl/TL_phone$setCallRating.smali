.class public Lorg/telegram/tgnet/tl/TL_phone$setCallRating;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "setCallRating"
.end annotation


# static fields
.field public static final constructor:I = 0x59ead627


# instance fields
.field public comment:Ljava/lang/String;

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

.field public rating:I

.field public user_initiative:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 566
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 576
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x59ead627

    .line 580
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 581
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$setCallRating;->user_initiative:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$setCallRating;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$setCallRating;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$setCallRating;->flags:I

    .line 582
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 583
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$setCallRating;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 584
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$setCallRating;->rating:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 585
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$setCallRating;->comment:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
