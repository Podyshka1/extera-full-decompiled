.class Lorg/telegram/ui/PremiumPreviewFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PremiumPreviewFragment;->closeSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 2212
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$6;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2215
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$6;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetcontentView(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$6;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->settingsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2216
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$6;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->settingsView:Landroid/widget/FrameLayout;

    .line 2217
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
