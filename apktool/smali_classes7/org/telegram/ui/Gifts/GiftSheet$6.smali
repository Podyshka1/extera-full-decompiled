.class Lorg/telegram/ui/Gifts/GiftSheet$6;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
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
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$6;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected animateByScale(Landroid/view/View;)F
    .locals 0

    const p1, 0x3e99999a    # 0.3f

    return p1
.end method
