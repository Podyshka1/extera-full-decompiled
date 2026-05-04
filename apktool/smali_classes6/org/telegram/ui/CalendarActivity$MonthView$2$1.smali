.class Lorg/telegram/ui/CalendarActivity$MonthView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CalendarActivity$MonthView$2;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;->this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;

    iput-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 4

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;->this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;->this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedStart(Lorg/telegram/ui/CalendarActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;->this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;)I

    move-result v2

    const v3, 0x15180

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/ChatActivity;->deleteHistory(IIZ)V

    return-void
.end method
