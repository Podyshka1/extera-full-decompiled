.class Lorg/telegram/ui/ActionBar/ActionBarLayout$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V
    .locals 0

    .line 3263
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 3284
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetthemeAnimatorSet(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3285
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetthemeAnimatorDescriptions(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3286
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetanimateStartColors(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3287
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetanimateEndColors(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3288
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetthemeAnimatorDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 3289
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 3290
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputpresentingFragmentDescriptions(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/util/ArrayList;)V

    .line 3291
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object v0, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    .line 3292
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputthemeAnimatorSet(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)V

    .line 3293
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3294
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3266
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 3267
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetthemeAnimatorSet(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3268
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetthemeAnimatorDescriptions(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3269
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetanimateStartColors(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3270
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetanimateEndColors(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3271
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetthemeAnimatorDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 3272
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 3273
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputpresentingFragmentDescriptions(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/util/ArrayList;)V

    .line 3274
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object v0, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    .line 3275
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputthemeAnimatorSet(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)V

    .line 3276
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3277
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
