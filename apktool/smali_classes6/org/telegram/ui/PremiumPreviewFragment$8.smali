.class Lorg/telegram/ui/PremiumPreviewFragment$8;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PremiumPreviewFragment;->showSelectStatusDialog(Lorg/telegram/ui/PremiumFeatureCell;Ljava/lang/Long;Lorg/telegram/messenger/Utilities$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/view/View;II)V
    .locals 0

    .line 2531
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$8;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 2534
    invoke-super {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 2535
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$8;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/PremiumPreviewFragment;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    return-void
.end method
