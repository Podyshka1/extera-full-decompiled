.class Lorg/telegram/ui/ChatActivity$71;
.super Lorg/telegram/ui/Components/BluredView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->checkShowBlur(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 11892
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/BluredView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 11895
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 11896
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 11897
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 11903
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11904
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 11905
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
