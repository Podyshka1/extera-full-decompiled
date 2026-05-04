.class Lorg/telegram/ui/LaunchActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/TermsOfServiceView$TermsOfServiceViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showTosActivity(ILorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method public static synthetic $r8$lambda$kxl_Z7Z48PjyHtc50hADKK4gCUk(Lorg/telegram/ui/LaunchActivity$13;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity$13;->lambda$onAcceptTerms$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .line 1453
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$13;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAcceptTerms$0()V
    .locals 2

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$13;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgettermsOfServiceView(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/TermsOfServiceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAcceptTerms(I)V
    .locals 2

    .line 1456
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/UserConfig;->unacceptedTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 1457
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1458
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$sfgetmainFragmentsStack()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1459
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$sfgetmainFragmentsStack()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$sfgetmainFragmentsStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1461
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$13;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgettermsOfServiceView(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/TermsOfServiceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 1462
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 1463
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 1464
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/LaunchActivity$13$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$13$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity$13;)V

    .line 1465
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1466
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
