.class Lorg/telegram/ui/ChatActivity$130;
.super Lorg/telegram/ui/Cells/ChatActionCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showGreetInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 32317
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$130;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 32320
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatActionCell;->onLayout(ZIIII)V

    move-object p1, p0

    .line 32321
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p2

    iget-object p3, p1, Lorg/telegram/ui/ChatActivity$130;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemptyViewContent(Lorg/telegram/ui/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p1, Lorg/telegram/ui/ChatActivity$130;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3, p0}, Lorg/telegram/ui/ChatActivity;->getServiceHeight(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FI)V

    return-void
.end method
