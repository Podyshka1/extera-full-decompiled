.class Lorg/telegram/ui/ActionBar/ActionBar$13;
.super Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->createAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EllipsizeSpanAnimator;)V
    .locals 0

    .line 2374
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$13;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EllipsizeSpanAnimator;)V

    return-void
.end method


# virtual methods
.method public onItemChanged(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 2

    .line 2377
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->onItemChanged(Lme/vkryl/android/animator/ReplaceAnimator;)V

    .line 2378
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->getTotalVisibility()F

    move-result p1

    .line 2379
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$13;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgettitlesContainer(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2380
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$13;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgettitlesContainer(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, -0x3ed00000    # -11.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
