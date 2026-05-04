.class Lorg/telegram/ui/Components/SearchTagsList$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchTagsList;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchTagsList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchTagsList;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$2;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$2;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetpremiumLayout(Lorg/telegram/ui/Components/SearchTagsList;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$2;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetpremiumLayout(Lorg/telegram/ui/Components/SearchTagsList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 225
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
