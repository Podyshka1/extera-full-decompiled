.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda50;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda50;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->$r8$lambda$5r85qK5PMgqqM589Q01FgtxOebo(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V

    return-void
.end method
