.class public Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_bots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updateStarRefProgram"
.end annotation


# static fields
.field public static final constructor:I = 0x778b5ab3


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public commission_permille:I

.field public duration_months:I

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 960
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 970
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x778b5ab3

    .line 975
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 976
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 977
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 978
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->commission_permille:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 979
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 980
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->duration_months:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
