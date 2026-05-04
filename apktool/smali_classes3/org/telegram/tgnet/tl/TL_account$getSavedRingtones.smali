.class public Lorg/telegram/tgnet/tl/TL_account$getSavedRingtones;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getSavedRingtones"
.end annotation


# static fields
.field public static final constructor:I = -0x1e6fdd78


# instance fields
.field public hash:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2119
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 2125
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$SavedRingtones;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$SavedRingtones;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x1e6fdd78

    .line 2129
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2130
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$getSavedRingtones;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
