.class Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;
.super Lorg/telegram/ui/Components/ReactionsContainerLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;


# direct methods
.method public static synthetic $r8$lambda$G72iLddfqGHzobLvLRqU64b2gA4(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;->lambda$onShownCustomEmojiReactionDialog$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1717
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onShownCustomEmojiReactionDialog$0(Landroid/view/View;)V
    .locals 0

    .line 1725
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->hideReactionsDialog()V

    .line 1726
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->-$$Nest$fgetbulletin(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1734
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->-$$Nest$fgetbulletin(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    goto :goto_0

    .line 1736
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1737
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->-$$Nest$fgetbulletin(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1738
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->-$$Nest$fgetbulletin(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 1741
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onShownCustomEmojiReactionDialog()V
    .locals 2

    .line 1720
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1722
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 1724
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->-$$Nest$fgetreactionsContainerLayout(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
