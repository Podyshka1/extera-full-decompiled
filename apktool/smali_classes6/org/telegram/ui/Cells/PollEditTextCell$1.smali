.class Lorg/telegram/ui/Cells/PollEditTextCell$1;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PollEditTextCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell$1;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected emojiCacheType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/Cells/PollEditTextCell$1;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->-$$Nest$fgetshowNextButton(Lorg/telegram/ui/Cells/PollEditTextCell;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell$1;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->onEditTextDraw(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 123
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell$1;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->onEditTextFocusChanged(Z)V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 8

    const v0, 0x1020022

    if-ne p1, v0, :cond_3

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 144
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "\n"

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_3

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v1

    .line 149
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 150
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell$1;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->onPastedMultipleLines(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 166
    :cond_3
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell$1;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->onFieldTouchUp(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    .line 117
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell$1;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->onActionModeStart(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/ActionMode;)V

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 128
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    .line 129
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell$1;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {p2, p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->onActionModeStart(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/ActionMode;)V

    return-object p1
.end method
