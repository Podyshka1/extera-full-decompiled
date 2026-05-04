.class Lorg/telegram/ui/Components/ChatActivityEnterView$50;
.super Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createMessageEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clickMaybe:Z

.field private firstDraw:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field touchX:F

.field touchY:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 5876
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    .line 5878
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->firstDraw:Z

    return-void
.end method

.method private fixHandlesColor()V
    .locals 2

    .line 5930
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 5941
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onAttachedToWindow()V

    .line 5942
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5943
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setWindowView(Landroid/view/View;)V

    return-void

    .line 5945
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setWindowView(Landroid/view/View;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 5881
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onDraw(Landroid/graphics/Canvas;)V

    .line 5882
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->firstDraw:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5883
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->firstDraw:Z

    .line 5884
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5893
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 5895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->touchX:F

    .line 5896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->touchY:F

    const/4 p1, 0x1

    .line 5897
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->clickMaybe:Z

    goto :goto_0

    .line 5898
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->clickMaybe:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->touchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->touchY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    :cond_1
    const/4 p1, 0x0

    .line 5900
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->clickMaybe:Z

    goto :goto_0

    .line 5903
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->clickMaybe:Z

    if-eqz p1, :cond_4

    .line 5904
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5905
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->fixHandlesColor()V

    .line 5906
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onKeyboardRequested()V

    .line 5908
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 5909
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 5910
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 5914
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->clickMaybe:Z

    return p1

    .line 5916
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 5917
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5918
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->fixHandlesColor()V

    .line 5919
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onKeyboardRequested()V

    .line 5922
    :cond_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOffsetY(F)V
    .locals 0

    .line 5935
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->setOffsetY(F)V

    .line 5936
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
