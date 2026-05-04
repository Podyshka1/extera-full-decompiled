.class public final synthetic Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$$ExternalSyntheticLambda0;->f$1:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$$ExternalSyntheticLambda0;->f$1:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, p1}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;->$r8$lambda$5WzRBack9R29dCww_dXtTwKT134(Ljava/lang/String;Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
