.class Lorg/telegram/ui/Components/TranslateAlert2$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TranslateAlert2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TranslateAlert2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$2;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2$2;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$mgetSheetTop(Lorg/telegram/ui/Components/TranslateAlert2;)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$2;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
