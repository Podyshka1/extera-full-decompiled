.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkClearButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 1814
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$15;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1817
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$15;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fputclearButtonAnimator(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/animation/AnimatorSet;)V

    return-void
.end method
