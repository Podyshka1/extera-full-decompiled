.class Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageAccessibilityNodeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;
    }
.end annotation


# instance fields
.field private linkPath:Landroid/graphics/Path;

.field private rect:Landroid/graphics/Rect;

.field private rectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 25870
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 25888
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    .line 25889
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    .line 25890
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method private getLinkById(IZ)Landroid/text/style/ClickableSpan;
    .locals 4

    const/16 v0, 0x1388

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    .line 26690
    :cond_0
    const-class v0, Landroid/text/style/ClickableSpan;

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    add-int/lit16 p1, p1, -0xbb8

    .line 26692
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    instance-of p2, p2, Landroid/text/Spannable;

    if-eqz p2, :cond_3

    if-gez p1, :cond_1

    goto :goto_0

    .line 26695
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Spannable;

    .line 26696
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p2, v2, v3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 26697
    array-length v0, p2

    if-gt v0, p1, :cond_2

    return-object v1

    .line 26700
    :cond_2
    aget-object p1, p2, p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    add-int/lit16 p1, p1, -0x7d0

    .line 26703
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of p2, p2, Landroid/text/Spannable;

    if-eqz p2, :cond_7

    if-gez p1, :cond_5

    goto :goto_1

    .line 26706
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Spannable;

    .line 26707
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p2, v2, v3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 26708
    array-length v0, p2

    if-gt v0, p1, :cond_6

    return-object v1

    .line 26711
    :cond_6
    aget-object p1, p2, p1

    return-object p1

    :cond_7
    :goto_1
    return-object v1
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 25909
    filled-new-array {v2, v2}, [I

    move-result-object v3

    .line 25910
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25911
    const-string v15, "%"

    const-string v5, " "

    const/16 v16, 0x0

    const-string v6, ", "

    const-string v11, "\n"

    const/4 v13, -0x1

    if-ne v1, v13, :cond_52

    .line 25912
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 25913
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 25914
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 25915
    :goto_0
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    if-eqz v14, :cond_1

    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v2

    .line 25916
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-wide v7, v8, Lorg/telegram/messenger/MessageObject;->loadedFileSize:J

    goto :goto_2

    :cond_2
    const-wide/16 v7, 0x0

    .line 25917
    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v13, v10, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    const-class v12, Landroid/text/style/ClickableSpan;

    if-eqz v13, :cond_3

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityTextUnread(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v10

    if-ne v10, v3, :cond_3

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityTextContentUnread(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v10

    if-ne v10, v14, :cond_3

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityTextFileSize(Lorg/telegram/ui/Cells/ChatMessageCell;)J

    move-result-wide v18

    cmp-long v10, v18, v7

    if-eqz v10, :cond_30

    .line 25918
    :cond_3
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 25919
    iget-object v13, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v9, v13, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    const/16 v4, 0x21

    if-eqz v9, :cond_4

    invoke-static {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v9

    if-nez v9, :cond_4

    .line 25920
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25921
    new-instance v9, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;

    iget-object v13, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    invoke-direct {v9, v0, v13}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v10, v9, v2, v13, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v9, 0xa

    .line 25922
    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 25924
    :cond_4
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawForwardedName(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v2

    :goto_3
    const/4 v13, 0x2

    if-ge v9, v13, :cond_7

    .line 25926
    iget-object v13, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v13

    aget-object v13, v13, v9

    if-eqz v13, :cond_6

    iget-object v13, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v13

    aget-object v13, v13, v9

    invoke-virtual {v13}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 25927
    iget-object v13, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v13

    aget-object v13, v13, v9

    invoke-virtual {v13}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-nez v9, :cond_5

    move-object v13, v5

    goto :goto_4

    :cond_5
    move-object v13, v11

    .line 25928
    :goto_4
    invoke-virtual {v10, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 25932
    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttach(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v9

    const/4 v13, 0x1

    if-ne v9, v13, :cond_8

    .line 25933
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttach(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v9

    const/16 v4, 0x2e

    move/from16 v19, v2

    .line 25934
    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move/from16 v17, v13

    const/4 v13, -0x1

    if-eq v2, v13, :cond_9

    .line 25935
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrDocumentType:I

    invoke-virtual {v9, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move/from16 v13, v17

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v4, v9, v19

    invoke-static {v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_8
    move/from16 v19, v2

    .line 25938
    :cond_9
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 25939
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25941
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttach(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    const/4 v4, 0x4

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v13, 0x1

    if-eq v2, v13, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v13, 0x2

    if-eq v2, v13, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    if-ne v2, v4, :cond_b

    goto :goto_6

    :cond_b
    move-object/from16 v20, v5

    goto :goto_9

    .line 25942
    :cond_c
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbuttonState(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetloadingProgressLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 25943
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25944
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 25945
    const-string v9, "AccDescrUploadProgress"

    goto :goto_7

    :cond_d
    const-string v9, "AccDescrDownloadProgress"

    :goto_7
    if-eqz v2, :cond_e

    .line 25946
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrUploadProgress:I

    goto :goto_8

    :cond_e
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrDownloadProgress:I

    .line 25947
    :goto_8
    iget-object v13, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    move-object/from16 v20, v5

    iget-wide v4, v13, Lorg/telegram/messenger/MessageObject;->loadedFileSize:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastLoadingSizeTotal(Lorg/telegram/ui/Cells/ChatMessageCell;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v4

    const/4 v13, 0x2

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v22, v4, v19

    const/16 v17, 0x1

    aput-object v5, v4, v17

    invoke-static {v9, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25950
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 25951
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25952
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMusicInfo:I

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v4, v9, v19

    const/16 v17, 0x1

    aput-object v5, v9, v17

    const-string v4, "AccDescrMusicInfo"

    invoke-static {v4, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25953
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25954
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_a

    .line 25955
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetisRoundVideo(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 25956
    :cond_10
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25957
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25958
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25959
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 25960
    const-string v2, "AccDescrMsgNotPlayed"

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgNotPlayed:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_a

    .line 25962
    :cond_11
    const-string v2, "AccDescrMsgPlayed"

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgPlayed:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25965
    :cond_12
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPoll(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 25966
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25967
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPoll(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25968
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25970
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetpollClosed(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 25971
    const-string v2, "FinalResults"

    sget v4, Lorg/telegram/messenger/R$string;->FinalResults:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 25973
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPoll(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v2, :cond_15

    .line 25974
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPoll(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    if-eqz v2, :cond_14

    .line 25975
    const-string v2, "QuizPoll"

    sget v4, Lorg/telegram/messenger/R$string;->QuizPoll:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 25977
    :cond_14
    const-string v2, "AnonymousQuizPoll"

    sget v4, Lorg/telegram/messenger/R$string;->AnonymousQuizPoll:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 25979
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPoll(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    if-eqz v2, :cond_16

    .line 25980
    const-string v2, "PublicPoll"

    sget v4, Lorg/telegram/messenger/R$string;->PublicPoll:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 25982
    :cond_16
    const-string v2, "AnonymousPoll"

    sget v4, Lorg/telegram/messenger/R$string;->AnonymousPoll:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 25985
    :goto_b
    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25987
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttach(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 25988
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_18

    .line 25989
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25990
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25992
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbuttonState(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_1a

    .line 25993
    :cond_19
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25994
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttach(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25997
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 25998
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25999
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getVoiceTranscription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_c

    .line 26001
    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 26002
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26003
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26006
    :cond_1c
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    const-string v4, "TodayAt"

    if-eqz v2, :cond_21

    .line 26007
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 26008
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26009
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-eqz v2, :cond_1d

    .line 26010
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrScheduledDate:I

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentTimeString(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/4 v13, 0x1

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v4, v5, v19

    const-string v4, "AccDescrScheduledDate"

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v13, v20

    goto/16 :goto_f

    .line 26012
    :cond_1d
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrSentDate:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lorg/telegram/messenger/R$string;->TodayAt:I

    invoke-static {v4, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v20

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentTimeString(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v4, v9, v19

    const-string v4, "AccDescrSentDate"

    invoke-static {v4, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26013
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26014
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "AccDescrMsgUnread"

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgUnread:I

    :goto_d
    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_1e
    const-string v2, "AccDescrMsgRead"

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgRead:I

    goto :goto_d

    :goto_e
    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_f

    :cond_1f
    move-object/from16 v13, v20

    .line 26016
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 26017
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26018
    const-string v2, "AccDescrMsgSending"

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgSending:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26019
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetradialProgress(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getProgress()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_22

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    .line 26021
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_f

    .line 26023
    :cond_20
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 26024
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26025
    const-string v2, "AccDescrMsgSendingError"

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgSendingError:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_f

    :cond_21
    move-object/from16 v13, v20

    .line 26028
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26029
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrReceivedDate:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lorg/telegram/messenger/R$string;->TodayAt:I

    invoke-static {v4, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentTimeString(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v4, v9, v19

    const-string v4, "AccDescrReceivedDate"

    invoke-static {v4, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26031
    :cond_22
    :goto_f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRepliesCount(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    if-lez v2, :cond_23

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCommentLayout()Z

    move-result v2

    if-nez v2, :cond_23

    .line 26032
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26033
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRepliesCount(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    move/from16 v4, v19

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "AccDescrNumberOfReplies"

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26035
    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d

    .line 26036
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v4, ""

    const/4 v5, 0x1

    if-ne v2, v5, :cond_29

    .line 26037
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 26038
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v6, :cond_24

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    goto :goto_10

    :cond_24
    move-object v5, v4

    .line 26039
    :goto_10
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    const/4 v13, 0x1

    if-ne v6, v13, :cond_28

    .line 26040
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26043
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_25

    .line 26044
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    if-eqz v2, :cond_25

    .line 26046
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 26047
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v2, :cond_26

    .line 26049
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_25
    const/4 v6, 0x0

    :cond_26
    :goto_11
    if-eqz v6, :cond_27

    .line 26054
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrYouReactedWith:I

    const/4 v13, 0x1

    new-array v4, v13, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v5, v4, v19

    const-string v5, "AccDescrYouReactedWith"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_14

    :cond_27
    const/4 v13, 0x1

    const/16 v19, 0x0

    .line 26056
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrReactedWith:I

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v19

    aput-object v5, v9, v13

    const-string v4, "AccDescrReactedWith"

    invoke-static {v4, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_14

    :cond_28
    const/16 v19, 0x0

    if-le v6, v13, :cond_2d

    .line 26059
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26060
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v5, v4, v19

    const-string v5, "AccDescrNumberOfPeopleReactions"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_14

    .line 26063
    :cond_29
    const-string v2, "Reactions"

    sget v5, Lorg/telegram/messenger/R$string;->Reactions:I

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26064
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v2, :cond_2c

    .line 26066
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 26067
    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    move/from16 v20, v5

    instance-of v5, v15, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v5, :cond_2a

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    goto :goto_13

    :cond_2a
    move-object v5, v4

    .line 26069
    :goto_13
    invoke-virtual {v10, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v20, 0x1

    if-ge v5, v2, :cond_2b

    .line 26071
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2b
    add-int/lit8 v5, v20, 0x1

    goto :goto_12

    .line 26075
    :cond_2c
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26078
    :cond_2d
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2e

    .line 26079
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26080
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "AccDescrNumberOfViews"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_15

    :cond_2e
    const/4 v4, 0x0

    .line 26082
    :goto_15
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26084
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v10, v4, v2, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 26086
    array-length v4, v2

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_2f

    aget-object v6, v2, v5

    .line 26087
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 26088
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 26089
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 26091
    new-instance v13, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$1;

    invoke-direct {v13, v0, v6}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$1;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;Landroid/text/style/CharacterStyle;)V

    const/16 v6, 0x21

    .line 26101
    invoke-virtual {v10, v13, v9, v11, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 26103
    :cond_2f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object v10, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    .line 26104
    invoke-static {v2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fputaccessibilityTextUnread(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    .line 26105
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2, v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fputaccessibilityTextContentUnread(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    .line 26106
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2, v7, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fputaccessibilityTextFileSize(Lorg/telegram/ui/Cells/ChatMessageCell;J)V

    .line 26109
    :cond_30
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_31

    .line 26110
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_17
    const/4 v13, 0x1

    goto :goto_18

    .line 26112
    :cond_31
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 26115
    :goto_18
    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26116
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 26118
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v13, v5, v13, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 26120
    :cond_32
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v5, Lorg/telegram/messenger/R$id;->acc_action_msg_options:I

    const-string v6, "AccActionMessageOptions"

    sget v7, Lorg/telegram/messenger/R$string;->AccActionMessageOptions:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 26121
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetIconForCurrentState(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    .line 26123
    const-string v5, "AccActionDownload"

    if-eqz v4, :cond_38

    const/4 v13, 0x1

    if-eq v4, v13, :cond_37

    const/4 v13, 0x2

    if-eq v4, v13, :cond_36

    const/4 v6, 0x3

    if-eq v4, v6, :cond_35

    const/4 v6, 0x5

    if-eq v4, v6, :cond_34

    .line 26140
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x10

    if-ne v4, v6, :cond_33

    .line 26141
    const-string v4, "CallAgain"

    sget v6, Lorg/telegram/messenger/R$string;->CallAgain:I

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    :cond_33
    move-object/from16 v6, v16

    goto :goto_19

    .line 26131
    :cond_34
    const-string v4, "AccActionOpenFile"

    sget v6, Lorg/telegram/messenger/R$string;->AccActionOpenFile:I

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 26137
    :cond_35
    const-string v4, "AccActionCancelDownload"

    sget v6, Lorg/telegram/messenger/R$string;->AccActionCancelDownload:I

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 26134
    :cond_36
    sget v4, Lorg/telegram/messenger/R$string;->AccActionDownload:I

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 26128
    :cond_37
    const-string v4, "AccActionPause"

    sget v6, Lorg/telegram/messenger/R$string;->AccActionPause:I

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 26125
    :cond_38
    const-string v4, "AccActionPlay"

    sget v6, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 26144
    :goto_19
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v7, 0x10

    invoke-direct {v4, v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 26145
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const-string v6, "AccActionEnterSelectionMode"

    sget v7, Lorg/telegram/messenger/R$string;->AccActionEnterSelectionMode:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-direct {v4, v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 26146
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetMiniIconForCurrentState(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    const/4 v13, 0x2

    if-ne v4, v13, :cond_39

    .line 26148
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v6, Lorg/telegram/messenger/R$id;->acc_action_small_button:I

    sget v7, Lorg/telegram/messenger/R$string;->AccActionDownload:I

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 26151
    :cond_39
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_3a

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-nez v4, :cond_3a

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_3b

    :cond_3a
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 26152
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBarAccessibilityDelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 26155
    :cond_3b
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetuseTranscribeButton(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->transcribeButton:Lorg/telegram/ui/Components/TranscribeButton;

    if-eqz v5, :cond_3c

    const/16 v5, 0x1ed

    .line 26156
    invoke-virtual {v1, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_3c
    if-ge v2, v3, :cond_3f

    .line 26161
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    if-eqz v3, :cond_3d

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 26162
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 26164
    :cond_3d
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_3e

    .line 26165
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 26166
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 26168
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1a
    if-ge v4, v3, :cond_3e

    aget-object v6, v2, v4

    .line 26169
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    add-int/lit16 v7, v5, 0x7d0

    invoke-virtual {v1, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 26173
    :cond_3e
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-eqz v3, :cond_3f

    .line 26174
    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 26175
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 26177
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1b
    if-ge v4, v3, :cond_3f

    aget-object v6, v2, v4

    .line 26178
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    add-int/lit16 v7, v5, 0xbb8

    invoke-virtual {v1, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 26184
    :cond_3f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v3, :cond_40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/ui/Cells/BotButton;

    .line 26185
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    add-int/lit16 v7, v4, 0x3e8

    invoke-virtual {v1, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 26188
    :cond_40
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgethintButtonVisible(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetpollHintX(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v13, -0x1

    if-eq v2, v13, :cond_41

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 26189
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1ef

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 26192
    :cond_41
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->pollButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v3, :cond_42

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 26193
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    add-int/lit16 v7, v4, 0x1f4

    invoke-virtual {v1, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 26196
    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawInstantView(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetinstantButtonRect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 26197
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1f3

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 26199
    :cond_43
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawContact(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactRect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactRect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 26200
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1ec

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 26201
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v13, 0x1

    if-le v2, v13, :cond_4a

    .line 26202
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_44
    :goto_1e
    if-ge v4, v3, :cond_4a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;

    .line 26203
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawContactView(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgettype(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_46

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_46

    .line 26204
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v8, 0x1eb

    invoke-virtual {v1, v6, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_1f

    :cond_45
    const/4 v7, 0x5

    .line 26206
    :cond_46
    :goto_1f
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawContactAdd(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgettype(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)I

    move-result v6

    const/16 v8, 0x1f

    if-ne v6, v8, :cond_48

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_48

    .line 26207
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v9, 0x1ea

    invoke-virtual {v1, v6, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_20

    :cond_47
    const/16 v8, 0x1f

    .line 26209
    :cond_48
    :goto_20
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawContactSendMessage(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgettype(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)I

    move-result v6

    const/16 v10, 0x1e

    if-ne v6, v10, :cond_44

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_44

    .line 26210
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v6, 0x1e9

    invoke-virtual {v1, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_1e

    :cond_49
    const/16 v10, 0x1e

    goto :goto_1e

    .line 26215
    :cond_4a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 26216
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1f0

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 26218
    :cond_4b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v13, 0x1

    if-eq v2, v13, :cond_4c

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v13, 0x2

    if-ne v2, v13, :cond_4d

    .line 26219
    :cond_4c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1f2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 26221
    :cond_4d
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_4e

    const/16 v3, 0x1f1

    .line 26222
    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 26224
    :cond_4e
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v2

    const/16 v19, 0x0

    aget-object v2, v2, v19

    if-eqz v2, :cond_4f

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v2

    const/16 v17, 0x1

    aget-object v2, v2, v17

    if-eqz v2, :cond_4f

    .line 26225
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v3, Lorg/telegram/messenger/R$id;->acc_action_open_forwarded_origin:I

    const-string v4, "AccActionOpenForwardedOrigin"

    sget v5, Lorg/telegram/messenger/R$string;->AccActionOpenForwardedOrigin:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 26227
    :cond_4f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawSelectionBackground(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_51

    :cond_50
    const/4 v13, 0x1

    goto :goto_21

    :cond_51
    return-object v1

    .line 26228
    :goto_21
    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-object v1

    :cond_52
    move-object v13, v5

    const/4 v7, 0x5

    const/16 v8, 0x1f

    const/16 v9, 0xa

    const/16 v10, 0x1e

    .line 26232
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 26233
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 26234
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 26235
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 26236
    const-string v4, "android.widget.TextView"

    const/16 v5, 0x1388

    if-ne v1, v5, :cond_57

    .line 26237
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_53

    return-object v16

    .line 26240
    :cond_53
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 26241
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 26242
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetnameX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetnameY(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetnameX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetnameWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetnameY(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetnameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v11

    if-eqz v11, :cond_54

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetnameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    :cond_54
    int-to-float v9, v9

    add-float/2addr v10, v9

    float-to-int v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 26243
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26244
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_55

    .line 26245
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26247
    :cond_55
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v5, v3, v19

    const/4 v13, 0x1

    aget v3, v3, v13

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26248
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26249
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26250
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26251
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 26252
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    const/16 v6, 0x10

    .line 26253
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v7, 0x20

    .line 26254
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_56
    :goto_22
    const/4 v13, 0x1

    goto/16 :goto_39

    :cond_57
    const/16 v5, 0xbb8

    if-lt v1, v5, :cond_5f

    .line 26256
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_5e

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-nez v6, :cond_58

    goto/16 :goto_25

    .line 26259
    :cond_58
    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    const/4 v6, 0x0

    .line 26260
    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object v7

    if-nez v7, :cond_59

    return-object v16

    .line 26264
    :cond_59
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8, v5, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRealSpanStartAndEnd(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/Spannable;Landroid/text/style/CharacterStyle;)[I

    move-result-object v7

    .line 26265
    aget v8, v7, v6

    const/16 v17, 0x1

    aget v6, v7, v17

    invoke-interface {v5, v8, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26266
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 26267
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :cond_5a
    :goto_23
    if-ge v8, v6, :cond_5d

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 26268
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 26269
    iget v11, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    const/16 v19, 0x0

    aget v12, v7, v19

    if-gt v11, v12, :cond_5c

    add-int/2addr v10, v11

    const/4 v13, 0x1

    aget v14, v7, v13

    if-lt v10, v14, :cond_5a

    .line 26270
    iget-object v5, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    sub-int/2addr v12, v11

    sub-int/2addr v14, v11

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    invoke-virtual {v5, v12, v14, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 26271
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 26272
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v10, v6, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v5, v7, v8, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 26273
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v9, v7, v6}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 26274
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->textX:I

    iget v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->textY:I

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 26275
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26276
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5b

    .line 26277
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26279
    :cond_5b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v5, v3, v19

    const/4 v13, 0x1

    aget v3, v3, v13

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26280
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_24

    :cond_5c
    const/4 v13, 0x1

    goto/16 :goto_23

    :cond_5d
    const/4 v13, 0x1

    .line 26285
    :goto_24
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26286
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26287
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 26288
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    const/16 v6, 0x10

    .line 26289
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v7, 0x20

    .line 26290
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto/16 :goto_22

    :cond_5e
    :goto_25
    return-object v16

    :cond_5f
    const/16 v5, 0x7d0

    if-lt v1, v5, :cond_66

    .line 26292
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-nez v5, :cond_60

    return-object v16

    .line 26295
    :cond_60
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    const/4 v6, 0x0

    .line 26296
    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object v7

    if-nez v7, :cond_61

    return-object v16

    .line 26300
    :cond_61
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8, v5, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRealSpanStartAndEnd(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/Spannable;Landroid/text/style/CharacterStyle;)[I

    move-result-object v7

    .line 26301
    aget v8, v7, v6

    const/16 v17, 0x1

    aget v6, v7, v17

    invoke-interface {v5, v8, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26302
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 26303
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :cond_62
    :goto_26
    if-ge v8, v6, :cond_65

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 26304
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 26305
    iget v11, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    const/16 v19, 0x0

    aget v12, v7, v19

    if-gt v11, v12, :cond_64

    add-int/2addr v10, v11

    const/4 v13, 0x1

    aget v14, v7, v13

    if-lt v10, v14, :cond_62

    .line 26306
    iget-object v5, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    sub-int/2addr v12, v11

    sub-int/2addr v14, v11

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    invoke-virtual {v5, v12, v14, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 26307
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 26308
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v10, v6, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v5, v7, v8, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 26309
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v9, v6, v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 26310
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->textX:I

    iget v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->textY:I

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 26311
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26312
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_63

    .line 26313
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26315
    :cond_63
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v5, v3, v19

    const/4 v13, 0x1

    aget v3, v3, v13

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26316
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_27

    :cond_64
    const/4 v13, 0x1

    goto/16 :goto_26

    :cond_65
    const/4 v13, 0x1

    .line 26321
    :goto_27
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26322
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26323
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 26324
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    const/16 v6, 0x10

    .line 26325
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v7, 0x20

    .line 26326
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto/16 :goto_22

    :cond_66
    const/16 v4, 0x3e8

    .line 26327
    const-string v5, "android.widget.Button"

    if-lt v1, v4, :cond_6c

    add-int/lit16 v4, v1, -0x3e8

    .line 26329
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_67

    return-object v16

    .line 26332
    :cond_67
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/BotButton;

    .line 26333
    iget-boolean v6, v4, Lorg/telegram/ui/Cells/BotButton;->isSeparator:Z

    if-eqz v6, :cond_68

    return-object v16

    .line 26337
    :cond_68
    iget-object v6, v4, Lorg/telegram/ui/Cells/BotButton;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Text;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 26338
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v13, 0x1

    .line 26339
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26340
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    const/16 v6, 0x10

    .line 26341
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26343
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget v6, v4, Lorg/telegram/ui/Cells/BotButton;->x:F

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetwidthForButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v4, Lorg/telegram/ui/Cells/BotButton;->y:I

    iget v8, v4, Lorg/telegram/ui/Cells/BotButton;->x:F

    iget v9, v4, Lorg/telegram/ui/Cells/BotButton;->width:F

    add-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetwidthForButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v4, Lorg/telegram/ui/Cells/BotButton;->y:I

    iget v4, v4, Lorg/telegram/ui/Cells/BotButton;->height:I

    add-int/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 26345
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 26346
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getWidthForButtons()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_29

    .line 26348
    :cond_69
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbackgroundDrawableLeft(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetmediaBackground(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_28

    :cond_6a
    const/high16 v5, 0x40e00000    # 7.0f

    :goto_28
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 26350
    :goto_29
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->layoutHeight:I

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 26351
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26352
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6b

    .line 26353
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26355
    :cond_6b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/16 v17, 0x1

    aget v3, v3, v17

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26356
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_22

    :cond_6c
    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_73

    add-int/lit16 v4, v1, -0x1f4

    .line 26359
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->pollButtons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_6d

    return-object v16

    .line 26362
    :cond_6d
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->pollButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 26363
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->title:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 26364
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetpollVoted(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 26365
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 26367
    :cond_6e
    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->-$$Nest$fgetchosen(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 26368
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->-$$Nest$fgetpercent(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26369
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPoll(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v5

    if-eqz v5, :cond_71

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPoll(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v5, :cond_71

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->-$$Nest$fgetchosen(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->-$$Nest$fgetcorrect(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 26370
    :cond_6f
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->-$$Nest$fgetcorrect(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z

    move-result v5

    if-eqz v5, :cond_70

    const-string v5, "AccDescrQuizCorrectAnswer"

    sget v6, Lorg/telegram/messenger/R$string;->AccDescrQuizCorrectAnswer:I

    :goto_2a
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2b

    :cond_70
    const-string v5, "AccDescrQuizIncorrectAnswer"

    sget v6, Lorg/telegram/messenger/R$string;->AccDescrQuizIncorrectAnswer:I

    goto :goto_2a

    :goto_2b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26373
    :cond_71
    :goto_2c
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x1

    .line 26374
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    const/16 v6, 0x10

    .line 26375
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26377
    iget v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->y:I

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->namesOffset:I

    add-int/2addr v5, v7

    .line 26378
    iget v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->backgroundWidth:I

    const/high16 v7, 0x42980000    # 76.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    .line 26379
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->x:I

    add-int/2addr v6, v8

    iget v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v7, v8, v5, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 26380
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26381
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_72

    .line 26382
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26384
    :cond_72
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26385
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26387
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :goto_2d
    move v13, v9

    goto/16 :goto_39

    :cond_73
    const/4 v9, 0x1

    const/high16 v4, 0x42000000    # 32.0f

    const/16 v12, 0x1ef

    if-ne v1, v12, :cond_76

    .line 26389
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26390
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26391
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrQuizExplanation:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x10

    .line 26392
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26393
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetpollHintX(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetpollHintY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetpollHintX(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetpollHintY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 26394
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26395
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_74

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 26396
    :cond_74
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26398
    :cond_75
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26399
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26400
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_2d

    :cond_76
    const/16 v12, 0x1f3

    if-ne v1, v12, :cond_7a

    .line 26402
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26403
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26404
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetinstantViewLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_77

    .line 26405
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetinstantViewLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_77
    const/16 v6, 0x10

    .line 26407
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26408
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetinstantButtonRect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 26409
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26410
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_78

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 26411
    :cond_78
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26413
    :cond_79
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26414
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26415
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_2d

    :cond_7a
    const/16 v12, 0x1ec

    if-ne v1, v12, :cond_7f

    .line 26417
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26418
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26419
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettitleLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_7b

    .line 26420
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettitleLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_7b
    const/16 v6, 0x10

    .line 26422
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26423
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactRect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 26424
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_7c

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x1

    if-le v4, v13, :cond_7c

    .line 26425
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;

    .line 26426
    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7c

    .line 26427
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v9, v4

    float-to-int v4, v9

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 26430
    :cond_7c
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26431
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7d

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 26432
    :cond_7d
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26434
    :cond_7e
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26435
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26436
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_2d

    :cond_7f
    const/16 v12, 0x1eb

    if-eq v1, v12, :cond_9a

    const/16 v12, 0x1ea

    if-eq v1, v12, :cond_80

    const/16 v12, 0x1e9

    if-ne v1, v12, :cond_81

    :cond_80
    const/16 v12, 0x1eb

    goto/16 :goto_36

    :cond_81
    const/16 v12, 0x1f2

    if-ne v1, v12, :cond_85

    .line 26467
    const-string v5, "android.widget.ImageButton"

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26468
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26469
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$misOpenChatByShare(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 26470
    const-string v5, "AccDescrOpenChat"

    sget v6, Lorg/telegram/messenger/R$string;->AccDescrOpenChat:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2e
    const/16 v6, 0x10

    goto :goto_2f

    .line 26472
    :cond_82
    const-string v5, "ShareFile"

    sget v6, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 26474
    :goto_2f
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26475
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetsideStartX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetsideStartY(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetsideStartX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v8

    float-to-int v8, v8

    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetsideStartY(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 26476
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26477
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_83

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 26478
    :cond_83
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26480
    :cond_84
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26481
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26482
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_2d

    :cond_85
    const/16 v4, 0x1f1

    if-ne v1, v4, :cond_8a

    .line 26484
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26486
    const-string v5, "Reply"

    sget v7, Lorg/telegram/messenger/R$string;->Reply:I

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26487
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26488
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_86

    .line 26489
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 26490
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26492
    :cond_86
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_87

    .line 26493
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 26495
    :cond_87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v6, 0x10

    .line 26496
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26498
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartX:I

    iget v7, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartY:I

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetreplyNameWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetreplyTextWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v9, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartY:I

    iget v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->replyHeight:F

    float-to-int v8, v8

    add-int/2addr v9, v8

    invoke-virtual {v4, v6, v7, v5, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 26499
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26500
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_88

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 26501
    :cond_88
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26503
    :cond_89
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26504
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26505
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_2d

    :cond_8a
    const/16 v4, 0x1ee

    if-ne v1, v4, :cond_8f

    .line 26507
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26509
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v5

    const/16 v19, 0x0

    aget-object v5, v5, v19

    if-eqz v5, :cond_8c

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v5

    aget-object v5, v5, v9

    if-eqz v5, :cond_8c

    const/4 v5, 0x0

    const/4 v6, 0x2

    :goto_30
    if-ge v5, v6, :cond_8c

    .line 26511
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_8b

    move-object v7, v13

    goto :goto_31

    :cond_8b
    move-object v7, v11

    .line 26512
    :goto_31
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 26515
    :cond_8c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v6, 0x10

    .line 26516
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26518
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardNameX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardNameOffsetX(Lorg/telegram/ui/Cells/ChatMessageCell;)[F

    move-result-object v5

    const/16 v19, 0x0

    aget v5, v5, v19

    sub-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardNameX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardNameOffsetX(Lorg/telegram/ui/Cells/ChatMessageCell;)[F

    move-result-object v6

    const/16 v17, 0x1

    aget v6, v6, v17

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 26519
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardNameY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardNameY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardHeight(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 26520
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26521
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8d

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    .line 26522
    :cond_8d
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26524
    :cond_8e
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v13, 0x1

    aget v3, v3, v13

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26525
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26526
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_39

    :cond_8f
    move v13, v9

    const/16 v4, 0x1f0

    if-ne v1, v4, :cond_97

    .line 26528
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26529
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26530
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRepliesCount(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    .line 26532
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-eqz v5, :cond_92

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v5

    if-nez v5, :cond_92

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result v5

    if-nez v5, :cond_92

    .line 26533
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    if-eqz v5, :cond_90

    .line 26534
    const-string v4, "ViewInChat"

    sget v5, Lorg/telegram/messenger/R$string;->ViewInChat:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    :cond_90
    if-nez v4, :cond_91

    .line 26536
    const-string v4, "LeaveAComment"

    sget v5, Lorg/telegram/messenger/R$string;->LeaveAComment:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_32
    move-object v6, v4

    goto :goto_33

    :cond_91
    const-string v5, "CommentsCount"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_32

    .line 26538
    :cond_92
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    if-nez v5, :cond_93

    if-lez v4, :cond_93

    move-object/from16 v5, v16

    .line 26539
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    :cond_93
    move-object/from16 v5, v16

    move-object v6, v5

    :goto_33
    if-eqz v6, :cond_94

    .line 26542
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_94
    const/16 v6, 0x10

    .line 26544
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26545
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentButtonRect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 26546
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26547
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_95

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 26548
    :cond_95
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26550
    :cond_96
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v13, 0x1

    aget v3, v3, v13

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26551
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26552
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_39

    :cond_97
    const/16 v4, 0x1ed

    if-ne v1, v4, :cond_a1

    .line 26554
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 26555
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26556
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v1

    if-eqz v1, :cond_98

    const-string v1, "AccActionCloseTranscription"

    sget v4, Lorg/telegram/messenger/R$string;->AccActionCloseTranscription:I

    :goto_34
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_98
    const-string v1, "AccActionOpenTranscription"

    sget v4, Lorg/telegram/messenger/R$string;->AccActionOpenTranscription:I

    goto :goto_34

    :goto_35
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x10

    .line 26557
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26558
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->transcribeButton:Lorg/telegram/ui/Components/TranscribeButton;

    if-eqz v4, :cond_99

    .line 26559
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettranscribeX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v1

    float-to-int v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettranscribeY(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettranscribeX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->transcribeButton:Lorg/telegram/ui/Components/TranscribeButton;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TranscribeButton;->width()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettranscribeY(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->transcribeButton:Lorg/telegram/ui/Components/TranscribeButton;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/TranscribeButton;->height()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 26561
    :cond_99
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26562
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v13, 0x1

    aget v3, v3, v13

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26563
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26564
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_39

    :cond_9a
    :goto_36
    if-ne v1, v12, :cond_9b

    move v8, v7

    goto :goto_37

    :cond_9b
    const/16 v9, 0x1ea

    if-ne v1, v9, :cond_9c

    goto :goto_37

    :cond_9c
    move v8, v10

    :goto_37
    const/4 v4, 0x0

    .line 26446
    :goto_38
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_56

    .line 26447
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcontactButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;

    .line 26448
    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgettype(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)I

    move-result v7

    if-ne v7, v8, :cond_a0

    .line 26449
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v13, 0x1

    .line 26450
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 26451
    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgetlayout(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_9d

    .line 26452
    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgetlayout(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)Landroid/text/StaticLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_9d
    const/16 v7, 0x10

    .line 26454
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26455
    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell$InstantViewButton;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 26456
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 26457
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9e

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 26458
    :cond_9e
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetaccessibilityVirtualViewBounds(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26460
    :cond_9f
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget v4, v3, v19

    const/4 v13, 0x1

    aget v3, v3, v13

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 26461
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 26462
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_39

    :cond_a0
    const/16 v7, 0x10

    const/4 v13, 0x1

    const/16 v19, 0x0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_38

    .line 26566
    :cond_a1
    :goto_39
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 26567
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-object v2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 26575
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto/16 :goto_1

    :cond_0
    const/16 p3, 0x40

    if-ne p2, p3, :cond_1

    .line 26578
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const p3, 0x8000

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$msendAccessibilityEventForVirtualView(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_1

    :cond_1
    const/16 p3, 0x10

    const/16 v0, 0xbb8

    const/4 v2, 0x0

    if-ne p2, p3, :cond_1b

    const/16 p2, 0x1388

    if-ne p1, p2, :cond_2

    .line 26581
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26582
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V

    goto/16 :goto_1

    :cond_2
    if-lt p1, v0, :cond_3

    .line 26585
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 26587
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p3, v0, p2, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V

    .line 26588
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2, p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$msendAccessibilityEventForVirtualView(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_1

    :cond_3
    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_4

    .line 26591
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 26593
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p3, v0, p2, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V

    .line 26594
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2, p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$msendAccessibilityEventForVirtualView(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_1

    :cond_4
    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_8

    add-int/lit16 p2, p1, -0x3e8

    .line 26598
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_5

    return v2

    .line 26601
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/BotButton;

    .line 26602
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-boolean p3, p2, Lorg/telegram/ui/Cells/BotButton;->isLocked:Z

    if-nez p3, :cond_7

    .line 26603
    iget-object p3, p2, Lorg/telegram/ui/Cells/BotButton;->buttonCustom:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    if-eqz p3, :cond_6

    .line 26604
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/BotButton;->buttonCustom:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    invoke-interface {p3, v0, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V

    goto :goto_0

    .line 26605
    :cond_6
    iget-object p3, p2, Lorg/telegram/ui/Cells/BotButton;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    if-eqz p3, :cond_7

    .line 26606
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/BotButton;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-interface {p3, v0, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    .line 26609
    :cond_7
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2, p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$msendAccessibilityEventForVirtualView(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_1

    :cond_8
    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_b

    add-int/lit16 p2, p1, -0x1f4

    .line 26612
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p3, p3, Lorg/telegram/ui/Cells/ChatMessageCell;->pollButtons:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_9

    return v2

    .line 26615
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p3, p3, Lorg/telegram/ui/Cells/ChatMessageCell;->pollButtons:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 26616
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 26617
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26618
    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->-$$Nest$fgetanswer(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Lorg/telegram/tgnet/TLRPC$PollAnswer;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26619
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, -0x1

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V

    .line 26621
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2, p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$msendAccessibilityEventForVirtualView(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_1

    :cond_b
    const/16 p2, 0x1ef

    if-ne p1, p2, :cond_c

    .line 26623
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26624
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_1

    :cond_c
    const/16 p2, 0x1f3

    if-ne p1, p2, :cond_d

    .line 26627
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26628
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->drawInstantViewType:I

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_1

    :cond_d
    const/16 p2, 0x1ec

    const/4 p3, 0x5

    if-ne p1, p2, :cond_e

    .line 26631
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26632
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_1

    :cond_e
    const/16 p2, 0x1eb

    if-ne p1, p2, :cond_f

    .line 26635
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26636
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_1

    :cond_f
    const/16 p2, 0x1ea

    if-ne p1, p2, :cond_10

    .line 26639
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26640
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 p3, 0x1f

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_1

    :cond_10
    const/16 p2, 0x1e9

    if-ne p1, p2, :cond_11

    .line 26643
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26644
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 p3, 0x1e

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_1

    :cond_11
    const/16 p2, 0x1f2

    if-ne p1, p2, :cond_12

    .line 26647
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26648
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto/16 :goto_1

    :cond_12
    const/16 p2, 0x1f1

    if-ne p1, p2, :cond_15

    .line 26651
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->isThreadChat:Z

    if-eqz p2, :cond_13

    iget-boolean p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->isMonoForum:Z

    if-nez p2, :cond_13

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getReplyTopMsgId()I

    move-result p1

    if-eqz p1, :cond_1d

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasValidReplyMessageObject()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->hasReplyQuote:Z

    if-nez p2, :cond_14

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz p1, :cond_1d

    .line 26652
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V

    goto/16 :goto_1

    :cond_15
    const/16 p2, 0x1ee

    if-ne p1, p2, :cond_18

    .line 26655
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26656
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentForwardChannel(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 26657
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentForwardChannel(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastTouchX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastTouchY(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v7

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFFZ)V

    goto/16 :goto_1

    .line 26658
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentForwardUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 26659
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentForwardUser(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastTouchX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastTouchY(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V

    goto/16 :goto_1

    .line 26660
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentForwardName(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26661
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_1

    :cond_18
    const/16 p2, 0x1f0

    if-ne p1, p2, :cond_1a

    .line 26665
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 26666
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    if-eqz p2, :cond_19

    .line 26667
    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_1

    .line 26669
    :cond_19
    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_1

    :cond_1a
    const/16 p2, 0x1ed

    if-ne p1, p2, :cond_1d

    .line 26672
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->transcribeButton:Lorg/telegram/ui/Components/TranscribeButton;

    if-eqz p1, :cond_1d

    .line 26673
    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranscribeButton;->onTap()V

    goto :goto_1

    :cond_1b
    const/16 p3, 0x20

    if-ne p2, p3, :cond_1d

    if-lt p1, v0, :cond_1c

    move v2, v1

    .line 26676
    :cond_1c
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 26677
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    if-eqz p3, :cond_1d

    .line 26678
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p3, v0, p2, v1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V

    .line 26679
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 p3, 0x2

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$msendAccessibilityEventForVirtualView(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    :cond_1d
    :goto_1
    return v1
.end method
