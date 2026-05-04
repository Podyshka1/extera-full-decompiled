.class public final synthetic Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$$ExternalSyntheticLambda2;->f$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$$ExternalSyntheticLambda2;->f$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;->$r8$lambda$RXOCfsk8mCV_GoofrrWWsME1mQM(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
