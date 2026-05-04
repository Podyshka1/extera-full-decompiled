.class Lorg/telegram/ui/NewContactBottomSheet$5;
.super Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactBottomSheet;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NewContactBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet$5;->this$0:Lorg/telegram/ui/NewContactBottomSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 444
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 445
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet$5;->this$0:Lorg/telegram/ui/NewContactBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/NewContactBottomSheet;->-$$Nest$fgetphoneOutlineView(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet$5;->this$0:Lorg/telegram/ui/NewContactBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/NewContactBottomSheet;->-$$Nest$fgetcodeField(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet$5;->this$0:Lorg/telegram/ui/NewContactBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/NewContactBottomSheet;->-$$Nest$fgetphoneField(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet$5;->this$0:Lorg/telegram/ui/NewContactBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/NewContactBottomSheet;->-$$Nest$fgetcodeField(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet$5;->this$0:Lorg/telegram/ui/NewContactBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/NewContactBottomSheet;->-$$Nest$fgetcodeField(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet$5;->this$0:Lorg/telegram/ui/NewContactBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/NewContactBottomSheet;->-$$Nest$fgetcodeField(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet$5;->this$0:Lorg/telegram/ui/NewContactBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/NewContactBottomSheet;->-$$Nest$fgetcodeField(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 439
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
