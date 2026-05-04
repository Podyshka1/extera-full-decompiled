.class Lorg/telegram/ui/Components/SharedMediaLayout$13;
.super Lorg/telegram/ui/Gifts/ProfileGiftsContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$P3OAHXagfaZ4ijuXQJnAlEJCZps(Lorg/telegram/ui/Components/SharedMediaLayout$13;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$13;->lambda$updatedReordering$0(Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2529
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$updatedReordering$0(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2542
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->saveItem:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected processColor(I)I
    .locals 1

    .line 2532
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->processColor(I)I

    move-result p1

    return p1
.end method

.method protected updatedReordering(Z)V
    .locals 4

    .line 2536
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->saveItem:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2537
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->saveItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2538
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2539
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2540
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$13$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$13$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$13;Z)V

    .line 2541
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2544
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2545
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mupdateOptionsSearch(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    return-void
.end method
