.class Lorg/telegram/ui/ActionBar/ActionBarLayout$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    .line 2942
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2950
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$monAnimationEndCheck(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 2945
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputtransitionAnimationStartTime(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)V

    return-void
.end method
