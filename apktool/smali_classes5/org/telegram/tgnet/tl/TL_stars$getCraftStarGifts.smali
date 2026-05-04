.class public Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getCraftStarGifts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/tgnet/TLMethod;"
    }
.end annotation


# static fields
.field public static final constructor:I = -0x2fa2300


# instance fields
.field public gift_id:J

.field public limit:I

.field public offset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6657
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 6657
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;
    .locals 0

    .line 6674
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2fa2300

    .line 6666
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6667
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;->gift_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6668
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;->offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 6669
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
