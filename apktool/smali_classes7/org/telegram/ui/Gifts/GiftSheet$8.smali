.class Lorg/telegram/ui/Gifts/GiftSheet$8;
.super Lorg/telegram/ui/Stars/StarGiftSheet;
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
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$8;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 2

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$8;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/GiftSheet;->access$100(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method
