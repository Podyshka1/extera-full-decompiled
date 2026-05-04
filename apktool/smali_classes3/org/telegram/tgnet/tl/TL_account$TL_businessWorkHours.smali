.class public Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_businessWorkHours"
.end annotation


# static fields
.field public static final constructor:I = -0x736d4f68


# instance fields
.field public flags:I

.field public open_now:Z

.field public timezone_id:Ljava/lang/String;

.field public weekly_open:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2314
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;
    .locals 2

    const v0, -0x736d4f68

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2323
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;-><init>()V

    .line 2324
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2329
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2330
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->open_now:Z

    .line 2331
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->timezone_id:Ljava/lang/String;

    .line 2332
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x736d4f68

    .line 2337
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2338
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->open_now:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->flags:I

    .line 2339
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2340
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->timezone_id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2341
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
