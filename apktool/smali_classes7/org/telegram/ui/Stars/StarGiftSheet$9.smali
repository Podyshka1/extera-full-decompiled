.class Lorg/telegram/ui/Stars/StarGiftSheet$9;
.super Lorg/telegram/ui/Stars/StarGiftSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;->setupNeighbour(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$9;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getBottomInset()I
    .locals 1

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$9;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v0

    return v0
.end method
