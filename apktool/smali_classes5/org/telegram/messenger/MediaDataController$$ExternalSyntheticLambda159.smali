.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

.field public final synthetic f$2:Lorg/telegram/messenger/MediaDataController$SearchStickersResult;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/MediaDataController$SearchStickersKey;Lorg/telegram/messenger/MediaDataController$SearchStickersResult;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$1:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$2:Lorg/telegram/messenger/MediaDataController$SearchStickersResult;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$4:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$1:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$2:Lorg/telegram/messenger/MediaDataController$SearchStickersResult;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$4:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$nIt0tUC8cZduL80pANiYQn52cEU(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/MediaDataController$SearchStickersKey;Lorg/telegram/messenger/MediaDataController$SearchStickersResult;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
