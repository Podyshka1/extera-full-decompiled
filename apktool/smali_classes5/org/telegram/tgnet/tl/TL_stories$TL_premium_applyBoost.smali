.class public Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_premium_applyBoost"
.end annotation


# static fields
.field public static constructor:I = 0x6b7da746


# instance fields
.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public slots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
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

    .line 1289
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 1293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->slots:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1297
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    .line 1301
    sget v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->constructor:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1302
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1303
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->slots:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 1306
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
