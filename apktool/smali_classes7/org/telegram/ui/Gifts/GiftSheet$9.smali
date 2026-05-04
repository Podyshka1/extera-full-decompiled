.class Lorg/telegram/ui/Gifts/GiftSheet$9;
.super Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
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

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;JLjava/lang/String;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$9;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iput-object p8, p0, Lorg/telegram/ui/Gifts/GiftSheet$9;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p9, p0, Lorg/telegram/ui/Gifts/GiftSheet$9;->val$onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;-><init>(JLjava/lang/String;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 528
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$9;->val$observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$9;->val$onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 534
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$9;->val$observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$9;->val$onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
