.class Lorg/telegram/ui/LoginActivity$PhoneView$3;
.super Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 2152
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 2178
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2179
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneOutlineView(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p2

    if-nez p1, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->isFocused()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    .line 2182
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetkeyboardView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 2183
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetkeyboardView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    .line 2185
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcountryState(Lorg/telegram/ui/LoginActivity$PhoneView;)I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 2186
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    sget p2, Lorg/telegram/messenger/R$string;->WrongCountry:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$msetCountryButtonText(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V

    return-void

    .line 2189
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcountryState(Lorg/telegram/ui/LoginActivity$PhoneView;)I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 2190
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$msetCountryButtonText(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 2156
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2157
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2158
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2161
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$3;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2169
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 2170
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 2173
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
