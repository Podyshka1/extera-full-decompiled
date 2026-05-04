.class Lorg/telegram/ui/GroupCreateFinalActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateFinalActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateFinalActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method public setAutoDeleteHistory(II)V
    .locals 0

    .line 642
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->-$$Nest$fputttlPeriod(Lorg/telegram/ui/GroupCreateFinalActivity;I)V

    .line 643
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public synthetic showGlobalAutoDeleteScreen()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback$-CC;->$default$showGlobalAutoDeleteScreen(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    return-void
.end method
