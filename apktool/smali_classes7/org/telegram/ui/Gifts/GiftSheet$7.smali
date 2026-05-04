.class Lorg/telegram/ui/Gifts/GiftSheet$7;
.super Lorg/telegram/ui/Gifts/SendGiftSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/GiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$7;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Gifts/SendGiftSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getParentBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 2

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$7;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/GiftSheet;->access$000(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method
