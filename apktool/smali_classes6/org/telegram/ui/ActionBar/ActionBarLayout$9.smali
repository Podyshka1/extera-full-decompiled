.class Lorg/telegram/ui/ActionBar/ActionBarLayout$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->expandPreviewFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 2734
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2737
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputpreviewOpenAnimationInProgress(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    .line 2738
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    return-void
.end method
