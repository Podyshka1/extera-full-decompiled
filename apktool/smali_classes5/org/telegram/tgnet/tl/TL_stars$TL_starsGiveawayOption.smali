.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starsGiveawayOption"
.end annotation


# static fields
.field public static final constructor:I = -0x6b317ad6


# instance fields
.field public amount:J

.field public currency:Ljava/lang/String;

.field public extended:Z

.field public flags:I

.field public isDefault:Z

.field public loadingStorePrice:Z

.field public missingStorePrice:Z

.field public stars:J

.field public store_product:Ljava/lang/String;

.field public winners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;",
            ">;"
        }
    .end annotation
.end field

.field public yearly_boosts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2180
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->winners:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;
    .locals 2

    const v0, -0x6b317ad6

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2197
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;-><init>()V

    .line 2198
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 2202
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2203
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->extended:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 2204
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->isDefault:Z

    .line 2205
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    .line 2206
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->yearly_boosts:I

    .line 2207
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2208
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->store_product:Ljava/lang/String;

    .line 2210
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->currency:Ljava/lang/String;

    .line 2211
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->amount:J

    .line 2212
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->winners:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x6b317ad6

    .line 2216
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2217
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->extended:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->flags:I

    .line 2218
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->isDefault:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->flags:I

    .line 2219
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2220
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2221
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->yearly_boosts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2222
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2223
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->store_product:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2225
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2226
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2227
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->winners:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
