.class Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileSpan"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 25895
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;->this$1:Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 25896
    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 25901
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;->this$1:Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25902
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;->this$1:Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;->this$1:Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;

    iget-object v1, p1, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V

    :cond_0
    return-void
.end method
