.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setSelectedForDelete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

.field final synthetic val$select:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Z)V
    .locals 0

    .line 2381
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;->val$select:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2384
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;->val$select:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->-$$Nest$fputselectedProgress(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;F)V

    .line 2385
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->updateColors()V

    return-void
.end method
