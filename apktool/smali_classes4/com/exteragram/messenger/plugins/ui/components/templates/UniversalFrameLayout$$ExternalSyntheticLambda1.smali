.class public final synthetic Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback3Return;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;

    check-cast p1, Landroid/graphics/Canvas;

    check-cast p2, Landroid/view/View;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;->$r8$lambda$j354mz7S27Ke5YUm9E60URo8ZjI(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;Landroid/graphics/Canvas;Landroid/view/View;J)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
