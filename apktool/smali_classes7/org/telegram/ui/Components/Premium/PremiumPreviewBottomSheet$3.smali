.class Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$3;
.super Lorg/telegram/ui/Components/EmojiPacksAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setTitle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected onCloseByLink()V
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dismiss()V

    return-void
.end method
