.class Lorg/telegram/ui/Stars/StarGiftPreviewSheet$3;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftPreviewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILjava/lang/String;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftPreviewSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftPreviewSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected animateByScale(Landroid/view/View;)F
    .locals 0

    const p1, 0x3e99999a    # 0.3f

    return p1
.end method
