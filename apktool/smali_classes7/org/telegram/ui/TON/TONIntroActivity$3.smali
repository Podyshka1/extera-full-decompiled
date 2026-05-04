.class Lorg/telegram/ui/TON/TONIntroActivity$3;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TON/TONIntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TON/TONIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/content/Context;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$3;->this$0:Lorg/telegram/ui/TON/TONIntroActivity;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$3;->this$0:Lorg/telegram/ui/TON/TONIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/TON/TONIntroActivity;->-$$Nest$fgettwoButtons(Lorg/telegram/ui/TON/TONIntroActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 286
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
