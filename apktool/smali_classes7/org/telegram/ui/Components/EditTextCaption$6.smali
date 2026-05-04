.class Lorg/telegram/ui/Components/EditTextCaption$6;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextCaption;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextCaption;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 826
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption$6;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 829
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 831
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$6;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 837
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextCaption$6;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 838
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextCaption$6;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/EditTextCaption;->-$$Nest$mhandleRichPaste(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/ClipData;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v1

    :catch_0
    move-exception v0

    .line 846
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 849
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method
