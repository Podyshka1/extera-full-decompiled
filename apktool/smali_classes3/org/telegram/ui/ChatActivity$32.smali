.class Lorg/telegram/ui/ChatActivity$32;
.super Lorg/telegram/ui/Components/FragmentContextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7623
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 2

    .line 7626
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatActivityTopPanelLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfragmentLocationContextViewWrapper(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;Z)V

    return-void
.end method
