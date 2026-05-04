.class Lorg/telegram/ui/CalendarActivity$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CalendarActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastSize:I

.field final synthetic this$0:Lorg/telegram/ui/CalendarActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$2;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 281
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    shl-int/lit8 p2, p2, 0x10

    .line 283
    iget p3, p1, Lorg/telegram/ui/CalendarActivity$2;->lastSize:I

    if-eq p3, p2, :cond_0

    .line 284
    iput p2, p1, Lorg/telegram/ui/CalendarActivity$2;->lastSize:I

    .line 285
    iget-object p2, p1, Lorg/telegram/ui/CalendarActivity$2;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
