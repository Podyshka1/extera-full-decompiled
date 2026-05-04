.class Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/content/Context;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 393
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    .line 394
    iget-object p3, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p3}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetemojiKeyboardVisible(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 396
    iget-object p2, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetactionButtonContainer(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p3}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetbottomDialogLayout(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 397
    iget-object p2, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetbottomDialogLayout(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$mupdateScrollViewMarginBottom(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;I)V

    :cond_0
    return-void
.end method
