.class Lorg/telegram/ui/DilogCacheBottomSheet$3;
.super Lorg/telegram/ui/CachedMediaLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DilogCacheBottomSheet;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel;Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DilogCacheBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DilogCacheBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$3;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/CachedMediaLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 220
    iget-object p2, p0, Lorg/telegram/ui/DilogCacheBottomSheet$3;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/DilogCacheBottomSheet;->access$200(Lorg/telegram/ui/DilogCacheBottomSheet;)I

    move-result p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p2, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/CachedMediaLayout;->onMeasure(II)V

    return-void
.end method
