.class Lorg/telegram/ui/ChatEditTypeActivity$3;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatEditTypeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatEditTypeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/content/Context;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 411
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcheckTextView(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcheckTextView(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcheckTextView(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcheckTextView(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
