.class Lorg/telegram/ui/MessageSendPreview$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;


# direct methods
.method public static synthetic $r8$lambda$5_Hg-rC9wZH69l6usWChBpkuYro(Lorg/telegram/ui/MessageSendPreview$2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview$2;->lambda$onGlobalFocusChanged$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bFsUMJo7dKmksdWjAXvGgoZWwfg(Lorg/telegram/ui/MessageSendPreview$2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview$2;->lambda$onGlobalFocusChanged$1(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onGlobalFocusChanged$0(Landroid/view/View;)V
    .locals 5

    .line 192
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetanchorSendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetanchorSendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButtonInitialPosition(Lorg/telegram/ui/MessageSendPreview;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButtonInitialPosition(Lorg/telegram/ui/MessageSendPreview;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetanchorSendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetanchorSendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetanchorSendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onGlobalFocusChanged$1(Landroid/view/View;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->makeFocusable()V

    .line 191
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MessageSendPreview$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/MessageSendPreview$2;Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetfocusable(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result p1

    if-nez p1, :cond_0

    instance-of p1, p2, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$2;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 189
    new-instance p1, Lorg/telegram/ui/MessageSendPreview$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/MessageSendPreview$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageSendPreview$2;Landroid/view/View;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
