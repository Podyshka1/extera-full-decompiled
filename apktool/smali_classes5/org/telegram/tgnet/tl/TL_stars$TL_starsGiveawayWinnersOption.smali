.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starsGiveawayWinnersOption"
.end annotation


# static fields
.field public static final constructor:I = 0x54236209


# instance fields
.field public flags:I

.field public isDefault:Z

.field public per_user_stars:J

.field public users:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2151
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;
    .locals 2

    const v0, 0x54236209

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2160
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;-><init>()V

    .line 2161
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2165
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2166
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->isDefault:Z

    .line 2167
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->users:I

    .line 2168
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->per_user_stars:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x54236209

    .line 2172
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2173
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->isDefault:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->flags:I

    .line 2174
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2175
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->users:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2176
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->per_user_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
