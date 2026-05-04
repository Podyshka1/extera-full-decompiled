.class Lorg/telegram/ui/ActionBar/ActionBarLayout$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 2891
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2894
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetwaitingForKeyboardCloseRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2897
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputwaitingForKeyboardCloseRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)V

    .line 2898
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$mstartLayoutAnimation(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZZ)V

    return-void
.end method
