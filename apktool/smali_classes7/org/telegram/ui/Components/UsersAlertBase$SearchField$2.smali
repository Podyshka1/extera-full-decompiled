.class Lorg/telegram/ui/Components/UsersAlertBase$SearchField$2;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/UsersAlertBase$SearchField;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/UsersAlertBase;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;Landroid/content/Context;Lorg/telegram/ui/Components/UsersAlertBase;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$2;->this$1:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$2;->val$this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 245
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$2;->this$1:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    iget-object v3, v3, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v3, v3, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 247
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 250
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$2;->this$1:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    iget-object v1, v1, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v1, v1, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 252
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
