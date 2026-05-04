.class Lorg/telegram/ui/CallLogActivity$4;
.super Lorg/telegram/ui/Components/FragmentContextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 2

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetfragmentContextViewWrapper(Lorg/telegram/ui/CallLogActivity;)Landroid/widget/FrameLayout;

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
