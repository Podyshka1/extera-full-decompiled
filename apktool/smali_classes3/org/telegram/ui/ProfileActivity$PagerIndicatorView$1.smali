.class Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

.field final synthetic val$expanded:Z

.field final synthetic val$this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Lorg/telegram/ui/ProfileActivity;Z)V
    .locals 0

    .line 1937
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->val$this$0:Lorg/telegram/ui/ProfileActivity;

    iput-boolean p3, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->val$expanded:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1940
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->-$$Nest$fgetisIndicatorVisible(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 1941
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1942
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1944
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgeteditItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1945
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgeteditItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1947
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcallItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1948
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcallItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1950
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvideoCallItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1951
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvideoCallItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1954
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1956
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateStoriesViewBounds(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1961
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->val$expanded:Z

    if-nez p1, :cond_0

    .line 1962
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1964
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgeteditItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1965
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgeteditItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1967
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcallItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1968
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcallItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1970
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvideoCallItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1971
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvideoCallItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1973
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1974
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateStoriesViewBounds(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method
