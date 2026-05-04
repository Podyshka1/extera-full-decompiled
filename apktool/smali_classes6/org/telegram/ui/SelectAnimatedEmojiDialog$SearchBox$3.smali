.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

.field final synthetic val$this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method public static synthetic $r8$lambda$0edE0N47ovLEJp2pYf3E6IX5DAw(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;->lambda$onTouchEvent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$x2_YDPy8Li_nRlmiw1MxtCHESlM(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;->lambda$onFocusChanged$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 5224
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iput-object p4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;->val$this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onFocusChanged$1()V
    .locals 1

    .line 5242
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->-$$Nest$fgetinput(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0()V
    .locals 0

    .line 5230
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 5250
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5253
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 5240
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onInputFocus()V

    .line 5241
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5245
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->prevWindowKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5229
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    return p1

    .line 5234
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
