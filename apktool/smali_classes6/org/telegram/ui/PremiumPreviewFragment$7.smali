.class Lorg/telegram/ui/PremiumPreviewFragment$7;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
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

.field final synthetic val$onSet:Lorg/telegram/messenger/Utilities$Callback2;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback2;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 0

    .line 2510
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$7;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-object p10, p0, Lorg/telegram/ui/PremiumPreviewFragment$7;->val$onSet:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p11, p0, Lorg/telegram/ui/PremiumPreviewFragment$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method


# virtual methods
.method protected getScrimDrawableTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 0

    .line 2513
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$7;->val$onSet:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p1, :cond_0

    .line 2514
    invoke-interface {p1, p2, p5}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2516
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_1

    .line 2517
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$7;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/PremiumPreviewFragment;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 2518
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_1
    return-void
.end method
