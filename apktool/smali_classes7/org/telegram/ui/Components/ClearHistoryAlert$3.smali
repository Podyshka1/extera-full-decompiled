.class Lorg/telegram/ui/Components/ClearHistoryAlert$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SlideChooseView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ClearHistoryAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

.field final synthetic val$scrollView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ClearHistoryAlert;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$3;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$3;->val$scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected(I)V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$3;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->-$$Nest$fputnewTimer(Lorg/telegram/ui/Components/ClearHistoryAlert;I)V

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$3;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ClearHistoryAlert;->-$$Nest$mupdateTimerButton(Lorg/telegram/ui/Components/ClearHistoryAlert;Z)V

    return-void
.end method

.method public onTouchEnd()V
    .locals 3

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$3;->val$scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$3;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->-$$Nest$fgetlinearLayout(Lorg/telegram/ui/Components/ClearHistoryAlert;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void
.end method
