.class Lorg/telegram/ui/Stars/StarGiftSheet$TopView$1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$TopView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;Landroid/content/Context;)V
    .locals 0

    .line 2097
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2100
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->is(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2101
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
