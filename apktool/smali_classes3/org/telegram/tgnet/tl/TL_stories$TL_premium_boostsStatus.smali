.class public Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_premium_boostsStatus"
.end annotation


# static fields
.field public static constructor:I = 0x4959427a


# instance fields
.field public boost_url:Ljava/lang/String;

.field public boosts:I

.field public current_level_boosts:I

.field public flags:I

.field public gift_boosts:I

.field public level:I

.field public my_boost:Z

.field public my_boost_slots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public next_level_boosts:I

.field public premium_audience:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

.field public prepaid_giveaways:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1204
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 1216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->my_boost_slots:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    .locals 2

    .line 1220
    sget v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->constructor:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;-><init>()V

    .line 1221
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 1225
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1226
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->my_boost:Z

    .line 1227
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    .line 1228
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->current_level_boosts:I

    .line 1229
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    .line 1230
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 1231
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->gift_boosts:I

    .line 1233
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1234
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    .line 1236
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1237
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    .line 1239
    :cond_3
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boost_url:Ljava/lang/String;

    .line 1240
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 1241
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    .line 1243
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 1244
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->my_boost_slots:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    .line 1249
    sget v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->constructor:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1250
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->my_boost:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    .line 1251
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1252
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1253
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->current_level_boosts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1254
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1255
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 1256
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->gift_boosts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1258
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1259
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1261
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1262
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1264
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boost_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1265
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 1266
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 1268
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 1269
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->my_boost_slots:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method
