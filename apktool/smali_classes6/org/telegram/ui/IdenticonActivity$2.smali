.class Lorg/telegram/ui/IdenticonActivity$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;Landroid/content/Context;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 139
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 140
    iget-object p2, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p2}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetcodeTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 141
    iget-object p2, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p2}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetcodeTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p3}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetcodeTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iget-object p3, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p3}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetemojiTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 142
    iget-object p3, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p3}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetcodeTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p4}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetemojiTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iget-object p4, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p4}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetlinearLayout1(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p3, p4

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p3, p4

    .line 143
    iget-object p4, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p4}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetemojiTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object p4

    iget-object p5, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {p5}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetemojiTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object v0, p1, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->-$$Nest$fgetemojiTextView(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, p2, p3, p5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method
