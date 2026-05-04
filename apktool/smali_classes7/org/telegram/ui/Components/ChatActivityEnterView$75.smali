.class Lorg/telegram/ui/Components/ChatActivityEnterView$75;
.super Lorg/telegram/ui/bots/BotKeyboardView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 11185
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$75;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/bots/BotKeyboardView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 2

    .line 11188
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 11189
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$75;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpanelAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$75;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimatingContentType(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11190
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$75;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->bottomPanelTranslationYChanged(F)V

    :cond_0
    return-void
.end method
