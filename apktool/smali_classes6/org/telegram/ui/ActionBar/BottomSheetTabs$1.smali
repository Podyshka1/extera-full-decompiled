.class Lorg/telegram/ui/ActionBar/BottomSheetTabs$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheetTabs;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V
    .locals 0

    .line 959
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->-$$Nest$fgetbottomTabsAnimator(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 963
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget v0, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    .line 964
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->-$$Nest$fgetinvalidateListeners(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 965
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
