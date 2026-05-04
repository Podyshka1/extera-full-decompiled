.class Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$6;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$6;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method
